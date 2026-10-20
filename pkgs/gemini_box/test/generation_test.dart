import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:gemini_box/gemini_box.dart';
import 'package:test/test.dart';

/// 画像生成・埋め込み（Gemini の generateImage / embedBatch）の検証。
void main() {
  late HttpServer server;
  late List<(String, Map<String, dynamic>)> requests;
  late Map<String, dynamic> Function() respond;

  setUp(() async {
    requests = [];
    server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))
      ..listen((request) async {
        final body = jsonDecode(await utf8.decoder.bind(request).join())
            as Map<String, dynamic>;
        requests.add((request.uri.path, body));
        request.response
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(respond()));
        await request.response.close();
      });
  });
  tearDown(() => server.close(force: true));

  Gemini client() => Gemini(
        apiKey: 'AIza-test',
        baseUrl: 'http://127.0.0.1:${server.port}/v1beta',
      );

  test('generateImage asks for image output and reads inline data', () async {
    respond = () => {
          'candidates': [
            {
              'content': {
                'role': 'model',
                'parts': [
                  {
                    'inlineData': {
                      'mimeType': 'image/png',
                      'data': base64Encode([4, 2]),
                    },
                  },
                ],
              },
              'finishReason': 'STOP',
            },
          ],
          'usageMetadata': {
            'promptTokenCount': 3,
            'candidatesTokenCount': 1290,
          },
        };
    final res = await client().generateImage(
      const ImageGenerationRequest(
        model: 'gemini-3.1-flash-image',
        prompt: 'cat',
        aspectRatio: '16:9',
      ),
    );
    expect(
      requests.single.$1,
      '/v1beta/models/gemini-3.1-flash-image:generateContent',
    );
    final config = requests.single.$2['generationConfig'] as Map;
    expect(config['responseModalities'], ['TEXT', 'IMAGE']);
    expect(config['imageConfig'], {'aspectRatio': '16:9'});
    expect(res.images.single.bytes, [4, 2]);
    expect(res.usage?.outputTokens, 1290);
  });

  test('embed uses batchEmbedContents with task and dimensions', () async {
    respond = () => {
          'embeddings': [
            {
              'values': [0.1, 0.2],
            },
            {
              'values': [0.3, 0.4],
            },
          ],
          'usageMetadata': {'promptTokenCount': 5},
        };
    final res = await client().embed(
      const EmbeddingRequest(
        model: 'gemini-embedding-001',
        inputs: ['a', 'b'],
        dimensions: 512,
        task: EmbeddingTask.query,
      ),
    );
    expect(
      requests.single.$1,
      '/v1beta/models/gemini-embedding-001:batchEmbedContents',
    );
    final first = (requests.single.$2['requests'] as List).first as Map;
    expect(first['model'], 'models/gemini-embedding-001');
    expect(first['taskType'], 'RETRIEVAL_QUERY');
    expect(first['outputDimensionality'], 512);
    expect(res.vectors.length, 2);
    expect(res.inputTokens, 5);
  });

  test('image models exclude Imagen and non-generateContent models', () {
    ModelInfo model(String id, List<String> methods) => ModelInfo.fromJson({
          'name': 'models/$id',
          'version': '1',
          'displayName': id,
          'inputTokenLimit': 1,
          'outputTokenLimit': 1,
          'supportedGenerationMethods': methods,
        });
    expect(
      Gemini.isImageModel(model('gemini-3.1-flash-image', ['generateContent'])),
      isTrue,
    );
    expect(Gemini.isImageModel(model('imagen-4.0', ['predict'])), isFalse);
    expect(
      Gemini.isImageModel(model('gemini-2.5-flash', ['generateContent'])),
      isFalse,
    );
  });
}
