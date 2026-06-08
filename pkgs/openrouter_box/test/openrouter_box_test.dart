import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/openrouter_box.dart';
import 'package:test/test.dart';

void main() {
  group('OpenRouterModel.fromJson', () {
    final json = <String, dynamic>{
      'id': 'openai/gpt-4o-mini',
      'canonical_slug': 'openai/gpt-4o-mini-2024',
      'name': 'OpenAI: GPT-4o-mini',
      'created': 1721260800,
      'description': 'A small, fast model.',
      'context_length': 128000,
      'architecture': {
        'modality': 'text+image->text',
        'input_modalities': ['text', 'image'],
        'output_modalities': ['text'],
      },
      'pricing': {'prompt': '0.00000015', 'completion': '0.0000006'},
      'top_provider': {
        'context_length': 128000,
        'max_completion_tokens': 16384,
      },
      'supported_parameters': ['max_tokens', 'temperature', 'tools'],
    };

    test('parses rich metadata', () {
      final m = OpenRouterModel.fromJson(json);
      expect(m.id, 'openai/gpt-4o-mini');
      expect(m.name, 'OpenAI: GPT-4o-mini');
      expect(m.canonicalSlug, 'openai/gpt-4o-mini-2024');
      expect(m.description, 'A small, fast model.');
      expect(m.contextLength, 128000);
      expect(m.maxCompletionTokens, 16384);
      expect(m.created, DateTime.fromMillisecondsSinceEpoch(1721260800 * 1000));
      expect(m.supportedParameters, contains('tools'));
    });

    test('parses modalities into LLMModality sets', () {
      final m = OpenRouterModel.fromJson(json);
      expect(m.inputModalities, {LLMModality.text, LLMModality.image});
      expect(m.outputModalities, {LLMModality.text});
    });

    test('parses pricing as numbers', () {
      final m = OpenRouterModel.fromJson(json);
      expect(m.pricing?.prompt, 0.00000015);
      expect(m.pricing?.completion, 0.0000006);
      expect(m.isFree, isFalse);
    });

    test('toAIModel maps to the common AIModel', () {
      final ai = OpenRouterModel.fromJson(json).toAIModel();
      expect(ai, isA<AIModel>());
      expect(ai.id, 'openai/gpt-4o-mini');
      expect(ai.name, 'OpenAI: GPT-4o-mini');
      expect(ai.contextLength, 128000);
      expect(ai.maxOutputTokens, 16384);
      expect(ai.inputModalities, {LLMModality.text, LLMModality.image});
    });

    test('free model detection', () {
      final free = OpenRouterModel.fromJson({
        'id': 'some/model:free',
        'pricing': {'prompt': '0', 'completion': '0'},
      });
      expect(free.isFree, isTrue);
      expect(free.toAIModel().id, 'some/model:free');
    });

    test('tolerates missing optional fields', () {
      final m = OpenRouterModel.fromJson({'id': 'x/y'});
      expect(m.id, 'x/y');
      expect(m.name, isNull);
      expect(m.pricing, isNull);
      expect(m.inputModalities, isNull);
      expect(m.created, isNull);
    });
  });

  group('OpenRouterKeyInfo.fromJson', () {
    test('parses the {data: {...}} envelope', () {
      final info = OpenRouterKeyInfo.fromJson({
        'data': {
          'label': 'sk-or-v1-...xyz',
          'usage': 0,
          'limit': 1,
          'limit_remaining': 1,
          'is_free_tier': false,
        },
      });
      expect(info.label, 'sk-or-v1-...xyz');
      expect(info.usage, 0);
      expect(info.limit, 1);
      expect(info.limitRemaining, 1);
      expect(info.isFreeTier, isFalse);
    });

    test('parses an unwrapped map and null (unlimited) limit', () {
      final info = OpenRouterKeyInfo.fromJson({
        'label': 'k',
        'usage': 1.5,
        'limit': null,
      });
      expect(info.label, 'k');
      expect(info.usage, 1.5);
      expect(info.limit, isNull);
    });
  });

  group('OpenRouter client', () {
    test('exposes apiKey and optional ranking headers', () {
      final ai = OpenRouter(
        apiKey: 'sk-or-test',
        referer: 'https://example.app',
        title: 'Example',
      );
      expect(ai.apiKey, 'sk-or-test');
      expect(ai.referer, 'https://example.app');
      expect(ai.title, 'Example');
      expect(ai, isA<LLMAIBase>());
    });
  });
}
