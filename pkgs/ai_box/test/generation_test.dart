import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:test/test.dart';

class _FakeEmbedder extends AIBase with TextEmbedder {
  _FakeEmbedder() : super(apiKey: 'k');

  final batches = <List<String>>[];

  @override
  int get maxEmbeddingBatch => 2;

  @override
  Future<EmbeddingResponse> embedBatch(EmbeddingRequest request) async {
    batches.add(request.inputs);
    return EmbeddingResponse(
      vectors: [
        for (final t in request.inputs)
          Float32List.fromList([t.length.toDouble()]),
      ],
      inputTokens: request.inputs.length,
      costUsd: 0.5,
    );
  }

  @override
  Future<List<AIModel>> getEmbeddingModels() async => const [];

  @override
  Future<List<AIModel>> getModels() async => const [];

  @override
  Future<bool> validateKey() async => true;
}

void main() {
  group('TextEmbedder.embed', () {
    test('splits into batches and keeps the order', () async {
      final e = _FakeEmbedder();
      final res = await e.embed(
        const EmbeddingRequest(
          model: 'm',
          inputs: ['a', 'bb', 'ccc', 'dddd', 'e'],
        ),
      );
      expect(e.batches, [
        ['a', 'bb'],
        ['ccc', 'dddd'],
        ['e'],
      ]);
      expect(res.vectors.map((v) => v.single), [1, 2, 3, 4, 1]);
      expect(res.inputTokens, 5);
      expect(res.costUsd, 1.5);
    });

    test('requestCountFor rounds up', () {
      final e = _FakeEmbedder();
      expect(e.requestCountFor(0), 0);
      expect(e.requestCountFor(2), 1);
      expect(e.requestCountFor(3), 2);
    });
  });

  group('OpenAI-format images', () {
    test('body sends only what the provider accepts', () {
      const r = ImageGenerationRequest(
        model: 'm',
        prompt: 'cat',
        n: 2,
        size: '1024x1024',
        aspectRatio: '16:9',
      );
      expect(buildOpenAiImageBody(r), {
        'model': 'm',
        'prompt': 'cat',
        'n': 2,
        'size': '1024x1024',
      });
      expect(
        buildOpenAiImageBody(
          r,
          sendSize: false,
          sendAspectRatio: true,
          b64ResponseFormat: true,
        ),
        {
          'model': 'm',
          'prompt': 'cat',
          'n': 2,
          'aspect_ratio': '16:9',
          'response_format': 'b64_json',
        },
      );
    });

    test('parses base64 images, URLs, usage and cost', () {
      final res = parseOpenAiImageResponse(
        {
          'data': [
            {
              'b64_json': base64Encode([1, 2, 3]),
              'media_type': 'image/webp',
            },
            {'url': 'https://example.com/a.png', 'revised_prompt': 'a cat'},
          ],
          'usage': {'input_tokens': 10, 'output_tokens': 20, 'cost': 0.04},
        },
        defaultMimeType: 'image/jpeg',
      );
      expect(res.images.first.bytes, [1, 2, 3]);
      expect(res.images.first.mimeType, 'image/webp');
      expect(res.images.last.url, 'https://example.com/a.png');
      expect(res.revisedPrompt, 'a cat');
      expect(res.usage?.inputTokens, 10);
      expect(res.usage?.outputTokens, 20);
      expect(res.costUsd, 0.04);
    });
  });

  group('OpenAI-format embeddings', () {
    test('body', () {
      expect(
        buildOpenAiEmbeddingBody(
          const EmbeddingRequest(model: 'm', inputs: ['a'], dimensions: 512),
        ),
        {
          'model': 'm',
          'input': ['a'],
          'encoding_format': 'float',
          'dimensions': 512,
        },
      );
    });

    test('parses in index order with usage', () {
      final res = parseOpenAiEmbeddingResponse(
        {
          'data': [
            {
              'index': 1,
              'embedding': [0.5, 1],
            },
            {
              'index': 0,
              'embedding': [2, 3],
            },
          ],
          'usage': {'prompt_tokens': 7, 'cost': 0.001},
        },
        expectedCount: 2,
        provider: 'p',
      );
      expect(res.vectors[0], [2, 3]);
      expect(res.vectors[1], [0.5, 1]);
      expect(res.inputTokens, 7);
      expect(res.costUsd, 0.001);
    });

    test('a count mismatch is an error', () {
      expect(
        () => parseOpenAiEmbeddingResponse(
          {'data': <Object>[]},
          expectedCount: 1,
          provider: 'p',
        ),
        throwsA(isA<LLMUnknownException>()),
      );
    });
  });

  test('parseModelList reads data[] or models[]', () {
    expect(
      parseModelList({
        'data': [
          {'id': 'a', 'name': 'A', 'created': 1, 'context_length': 100},
          {'name': 'no id'},
        ],
      }).map((m) => (m.id, m.name, m.contextLength)),
      [('a', 'A', 100)],
    );
    expect(
      parseModelList({
        'models': [
          {'id': 'b'},
        ],
      }).single.id,
      'b',
    );
  });
}
