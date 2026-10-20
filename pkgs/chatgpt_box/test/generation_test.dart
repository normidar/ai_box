import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/chatgpt_box.dart';
import 'package:test/test.dart';

/// 画像生成・埋め込み（ChatGPT の generateImage / embedBatch）の検証。
void main() {
  late HttpServer server;
  late List<(String, Map<String, dynamic>)> requests;
  late Map<String, dynamic> Function(String path) respond;

  setUp(() async {
    requests = [];
    server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))
      ..listen((request) async {
        final body =
            jsonDecode(await utf8.decoder.bind(request).join())
                as Map<String, dynamic>;
        requests.add((request.uri.path, body));
        request.response
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(respond(request.uri.path)));
        await request.response.close();
      });
  });
  tearDown(() => server.close(force: true));

  ChatGPT client() =>
      ChatGPT(apiKey: 'sk-test', baseUrl: 'http://127.0.0.1:${server.port}/v1');

  test(
    'generateImage posts to /images/generations and decodes base64',
    () async {
      respond =
          (_) => {
            'data': [
              {
                'b64_json': base64Encode([7, 8]),
              },
            ],
            'usage': {'input_tokens': 3, 'output_tokens': 4},
          };
      final res = await client().generateImage(
        const ImageGenerationRequest(model: 'gpt-image-1', prompt: 'a cat'),
      );
      expect(requests.single.$1, '/v1/images/generations');
      expect(requests.single.$2, {'model': 'gpt-image-1', 'prompt': 'a cat'});
      expect(res.images.single.bytes, [7, 8]);
      expect(res.usage?.outputTokens, 4);
    },
  );

  test('DALL-E asks for base64', () async {
    respond =
        (_) => {
          'data': [
            {
              'b64_json': base64Encode([1]),
            },
          ],
        };
    await client().generateImage(
      const ImageGenerationRequest(model: 'dall-e-3', prompt: 'x'),
    );
    expect(requests.single.$2['response_format'], 'b64_json');
  });

  test('embed posts to /embeddings in batches', () async {
    respond = (_) {
      final inputs = requests.last.$2['input'] as List;
      return {
        'data': [
          for (var i = 0; i < inputs.length; i++)
            {
              'index': i,
              'embedding': [i, 1],
            },
        ],
        'usage': {'prompt_tokens': inputs.length},
      };
    };
    final res = await client().embed(
      const EmbeddingRequest(
        model: 'text-embedding-3-small',
        inputs: ['a', 'b'],
        dimensions: 512,
      ),
    );
    expect(requests.single.$1, '/v1/embeddings');
    expect(requests.single.$2['dimensions'], 512);
    expect(res.vectors.length, 2);
    expect(res.inputTokens, 2);
  });

  test('image model ids', () {
    expect(ChatGPT.isImageModelId('gpt-image-1'), isTrue);
    expect(ChatGPT.isImageModelId('dall-e-3'), isTrue);
    expect(ChatGPT.isImageModelId('gpt-5.4-mini'), isFalse);
  });
}
