import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:test/test.dart';

void main() {
  group('LLMContent', () {
    test('text-only user message', () {
      final c = LLMContent.user('hello');
      expect(c.role, LLMRole.user);
      expect(c.text, 'hello');
      expect(c.content, 'hello');
      expect(c.hasImages, isFalse);
      expect(c.parts.length, 1);
    });

    test('user message with image attachment', () {
      final bytes = Uint8List.fromList([1, 2, 3]);
      final c = LLMContent.user(
        'describe',
        attachments: [LLMImagePart.bytes(bytes, mimeType: 'image/webp')],
      );
      expect(c.hasImages, isTrue);
      expect(c.images.length, 1);
      expect(c.text, 'describe');
      // テキスト + 画像で 2 パーツ。
      expect(c.parts.length, 2);
    });

    test('text getter concatenates only text parts', () {
      final c = LLMContent(
        role: LLMRole.model,
        parts: [
          LLMTextPart('a'),
          LLMImagePart.url('https://example.com/x.png'),
          LLMTextPart('b'),
        ],
      );
      expect(c.text, 'ab');
      expect(c.images.length, 1);
    });

    test('reasoning getter', () {
      final c = LLMContent(
        role: LLMRole.model,
        parts: [LLMReasoningPart('thinking'), LLMTextPart('answer')],
      );
      expect(c.hasReasoning, isTrue);
      expect(c.reasoning, 'thinking');
      expect(c.text, 'answer');
    });
  });

  group('LLMImagePart', () {
    test('bytes constructor exposes base64 + data uri', () {
      final bytes = Uint8List.fromList(utf8.encode('hi'));
      final p = LLMImagePart.bytes(bytes, mimeType: 'image/jpeg');
      expect(p.hasBytes, isTrue);
      expect(p.isUrl, isFalse);
      expect(p.base64Data, base64Encode(bytes));
      expect(p.asUrlOrDataUri, 'data:image/jpeg;base64,${base64Encode(bytes)}');
    });

    test('url constructor', () {
      final p = LLMImagePart.url('https://example.com/a.png');
      expect(p.isUrl, isTrue);
      expect(p.hasBytes, isFalse);
      expect(p.asUrlOrDataUri, 'https://example.com/a.png');
    });

    test('dataUri factory decodes bytes', () {
      final bytes = Uint8List.fromList([10, 20, 30]);
      final uri = 'data:image/png;base64,${base64Encode(bytes)}';
      final p = LLMImagePart.dataUri(uri);
      expect(p.hasBytes, isTrue);
      expect(p.mimeType, 'image/png');
      expect(p.bytes, bytes);
    });

    test('dataUri factory falls back to url on non-data string', () {
      final p = LLMImagePart.dataUri('https://example.com/a.png');
      expect(p.isUrl, isTrue);
    });
  });

  group('LLMFinishReason.parse', () {
    test('normalizes provider strings', () {
      expect(LLMFinishReason.parse('stop'), LLMFinishReason.stop);
      expect(LLMFinishReason.parse('end_turn'), LLMFinishReason.stop);
      expect(LLMFinishReason.parse('STOP'), LLMFinishReason.stop);
      expect(LLMFinishReason.parse('length'), LLMFinishReason.length);
      expect(LLMFinishReason.parse('max_tokens'), LLMFinishReason.length);
      expect(LLMFinishReason.parse('MAX_TOKENS'), LLMFinishReason.length);
      expect(LLMFinishReason.parse('tool_calls'), LLMFinishReason.toolCalls);
      expect(LLMFinishReason.parse('tool_use'), LLMFinishReason.toolCalls);
      expect(
        LLMFinishReason.parse('content_filter'),
        LLMFinishReason.contentFilter,
      );
      expect(LLMFinishReason.parse('SAFETY'), LLMFinishReason.contentFilter);
      expect(LLMFinishReason.parse(null), LLMFinishReason.other);
      expect(LLMFinishReason.parse('weird'), LLMFinishReason.other);
    });
  });

  group('LLMException.fromHttp', () {
    test('maps status codes to typed exceptions', () {
      expect(LLMException.fromHttp(401), isA<LLMAuthException>());
      expect(LLMException.fromHttp(403), isA<LLMAuthException>());
      expect(LLMException.fromHttp(429), isA<LLMRateLimitException>());
      expect(LLMException.fromHttp(400), isA<LLMInvalidRequestException>());
      expect(LLMException.fromHttp(404), isA<LLMInvalidRequestException>());
      expect(LLMException.fromHttp(500), isA<LLMServerException>());
      expect(LLMException.fromHttp(503), isA<LLMServerException>());
    });

    test('extracts message and code from error body', () {
      final e = LLMException.fromHttp(
        400,
        provider: 'openai',
        body: {
          'error': {'message': 'bad request', 'type': 'invalid_request_error'},
        },
      );
      expect(e.message, 'bad request');
      expect(e.code, 'invalid_request_error');
      expect(e.provider, 'openai');
      expect(e.statusCode, 400);
    });

    test('is exhaustively switchable', () {
      const LLMException e = LLMRateLimitException('x');
      final label = switch (e) {
        LLMAuthException() => 'auth',
        LLMRateLimitException() => 'rate',
        LLMInvalidRequestException() => 'invalid',
        LLMServerException() => 'server',
        LLMNetworkException() => 'network',
        LLMUnknownException() => 'unknown',
      };
      expect(label, 'rate');
    });
  });

  group('LLMResponseFormat', () {
    test('jsonSchema holds schema', () {
      final f = LLMResponseFormat.jsonSchema(
        schema: {'type': 'object'},
        schemaName: 'foo',
      );
      expect(f.type, LLMResponseFormatType.jsonSchema);
      expect(f.schemaName, 'foo');
      expect(f.schema, {'type': 'object'});
    });

    test('text/jsonObject constants', () {
      expect(LLMResponseFormat.text.type, LLMResponseFormatType.text);
      expect(
        LLMResponseFormat.jsonObject.type,
        LLMResponseFormatType.jsonObject,
      );
    });
  });

  group('LLMToolChoice', () {
    test('factory and constants', () {
      expect(LLMToolChoice.auto.mode, LLMToolChoiceMode.auto);
      expect(LLMToolChoice.none.mode, LLMToolChoiceMode.none);
      expect(LLMToolChoice.any.mode, LLMToolChoiceMode.any);
      final t = LLMToolChoice.tool('get_weather');
      expect(t.toolName, 'get_weather');
      expect(t.mode, LLMToolChoiceMode.any);
    });
  });
}
