import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/openrouter_box.dart';
import 'package:test/test.dart';

/// 画像生成・埋め込み（OpenRouter の generateImage / embedBatch）の検証。
void main() {
  late HttpServer server;
  late List<(String, Map<String, dynamic>, String?)> requests;
  late Map<String, dynamic> Function() respond;

  setUp(() async {
    requests = [];
    server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))..listen((
      request,
    ) async {
      final body =
          jsonDecode(await utf8.decoder.bind(request).join())
              as Map<String, dynamic>;
      requests.add((request.uri.path, body, request.headers.value('x-title')));
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(respond()));
      await request.response.close();
    });
  });
  tearDown(() => server.close(force: true));

  OpenRouter client() => OpenRouter(
    apiKey: 'sk-or-test',
    title: 'Test',
    baseUrl: 'http://127.0.0.1:${server.port}/api/v1',
  );

  test(
    'generateImage posts to /images with aspect_ratio, reads cost',
    () async {
      respond =
          () => {
            'data': [
              {
                'b64_json': base64Encode([5]),
                'media_type': 'image/webp',
              },
            ],
            'usage': {'cost': 0.03},
          };
      final res = await client().generateImage(
        const ImageGenerationRequest(
          model: 'google/gemini-3.1-flash-image',
          prompt: 'cat',
          aspectRatio: '16:9',
        ),
      );
      expect(requests.single.$1, '/api/v1/images');
      expect(requests.single.$2['aspect_ratio'], '16:9');
      expect(requests.single.$3, 'Test');
      expect(res.images.single.mimeType, 'image/webp');
      expect(res.costUsd, 0.03);
    },
  );

  test('embed posts to /embeddings and reads cost', () async {
    respond =
        () => {
          'data': [
            {
              'index': 0,
              'embedding': [0.1, 0.2],
            },
          ],
          'usage': {'prompt_tokens': 2, 'cost': 0.0001},
        };
    final res = await client().embed(
      const EmbeddingRequest(
        model: 'openai/text-embedding-3-small',
        inputs: ['hi'],
      ),
    );
    expect(requests.single.$1, '/api/v1/embeddings');
    expect(res.vectors.single.length, 2);
    expect(res.costUsd, 0.0001);
  });
}
