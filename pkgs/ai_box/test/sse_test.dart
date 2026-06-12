import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/provider_http.dart';
import 'package:test/test.dart';

/// SSE トランスポート（provider_http.dart の postSseData / decodeSseJson）の
/// 検証。ローカル HTTP サーバーに対して実際にストリーミングする。
void main() {
  group('postSseData', () {
    late HttpServer server;

    tearDown(() async {
      await server.close(force: true);
    });

    Future<String> serve(
      Future<void> Function(HttpRequest request) handler,
    ) async {
      server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))
        ..listen((request) async {
          await handler(request);
          await request.response.close();
        });
      return 'http://127.0.0.1:${server.port}/v1/test';
    }

    void writeSse(HttpRequest request, String raw) {
      request.response.headers.contentType =
          ContentType('text', 'event-stream');
      request.response.write(raw);
    }

    test('yields one payload per event and joins multi-line data', () async {
      final url = await serve((request) async {
        writeSse(
          request,
          ': comment line\n'
          'event: message\n'
          'data: {"a":\n'
          'data: 1}\n'
          '\n'
          'data: second\n'
          '\n',
        );
      });
      final events = await postSseData(
        url: url,
        provider: 'test',
        headers: const {},
        body: const {'x': 1},
      ).toList();
      expect(events, ['{"a":\n1}', 'second']);
    });

    test('handles CRLF lines and a final event without a trailing blank line',
        () async {
      final url = await serve((request) async {
        writeSse(request, 'data: one\r\n\r\ndata: two');
      });
      final events = await postSseData(
        url: url,
        provider: 'test',
        headers: const {},
        body: const {},
      ).toList();
      expect(events, ['one', 'two']);
    });

    test('sends JSON body, custom headers and query parameters', () async {
      late Map<String, dynamic> receivedBody;
      String? receivedHeader;
      String? receivedQuery;
      final url = await serve((request) async {
        receivedQuery = request.uri.queryParameters['alt'];
        receivedHeader = request.headers.value('x-api-key');
        receivedBody = jsonDecode(await utf8.decoder.bind(request).join())
            as Map<String, dynamic>;
        writeSse(request, 'data: ok\n\n');
      });
      final events = await postSseData(
        url: url,
        provider: 'test',
        headers: const {'x-api-key': 'k'},
        body: const {'stream': true},
        queryParameters: const {'alt': 'sse'},
      ).toList();
      expect(events, ['ok']);
      expect(receivedBody, {'stream': true});
      expect(receivedHeader, 'k');
      expect(receivedQuery, 'sse');
    });

    test('normalizes non-2xx into typed LLMExceptions', () async {
      final url = await serve((request) async {
        request.response.statusCode = 401;
        request.response.write(
          jsonEncode({
            'error': {'message': 'bad key', 'type': 'auth_error'},
          }),
        );
      });
      await expectLater(
        postSseData(
          url: url,
          provider: 'test',
          headers: const {},
          body: const {},
        ).toList(),
        throwsA(
          isA<LLMAuthException>()
              .having((e) => e.message, 'message', 'bad key')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having((e) => e.provider, 'provider', 'test'),
        ),
      );
    });

    test('throws LLMNetworkException when the connection fails', () async {
      // 接続を確実に失敗させるため、閉じたポートへ接続する。
      final probe = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      final port = probe.port;
      await probe.close(force: true);
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      await expectLater(
        postSseData(
          url: 'http://127.0.0.1:$port/',
          provider: 'test',
          headers: const {},
          body: const {},
        ).toList(),
        throwsA(isA<LLMNetworkException>()),
      );
    });
  });

  group('decodeSseJson', () {
    test('decodes JSON maps and skips [DONE] / non-JSON / non-map', () async {
      final events = await decodeSseJson(
        Stream.fromIterable([
          '{"a":1}',
          '[DONE]',
          'not json',
          '[1,2]',
          '{"b":2}',
        ]),
      ).toList();
      expect(events, [
        {'a': 1},
        {'b': 2},
      ]);
    });
  });
}
