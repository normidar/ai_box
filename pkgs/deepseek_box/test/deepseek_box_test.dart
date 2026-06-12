import 'package:ai_box/ai_box.dart';
import 'package:deepseek_box/deepseek_box.dart';
import 'package:test/test.dart';

void main() {
  group('ChatCompletionResponse.fromJson', () {
    final json = <String, dynamic>{
      'id': 'chatcmpl-123',
      'object': 'chat.completion',
      'created': 1721260800,
      'model': 'deepseek-chat',
      'system_fingerprint': 'fp_abc',
      'choices': [
        {
          'index': 0,
          'message': {
            'role': 'assistant',
            'content': 'Hello!',
            'reasoning_content': 'The user greeted me.',
          },
          'finish_reason': 'stop',
        },
      ],
      'usage': {
        'prompt_tokens': 10,
        'completion_tokens': 5,
        'total_tokens': 15,
        'prompt_cache_hit_tokens': 2,
        'prompt_cache_miss_tokens': 8,
        'completion_tokens_details': {'reasoning_tokens': 3},
      },
    };

    test('parses a full response', () {
      final res = ChatCompletionResponse.fromJson(json);
      expect(res.id, 'chatcmpl-123');
      expect(res.model, 'deepseek-chat');
      expect(res.systemFingerprint, 'fp_abc');
      expect(res.choices, hasLength(1));
      expect(res.choices.first.message.content, 'Hello!');
      expect(
        res.choices.first.message.reasoningContent,
        'The user greeted me.',
      );
      expect(res.choices.first.finishReason, 'stop');
      expect(res.usage?.promptTokens, 10);
      expect(res.usage?.completionTokens, 5);
      expect(res.usage?.totalTokens, 15);
      expect(res.usage?.promptCacheHitTokens, 2);
      expect(res.usage?.completionTokensDetails?.reasoningTokens, 3);
    });

    test('tolerates missing optional fields', () {
      final res = ChatCompletionResponse.fromJson({
        'id': 'chatcmpl-1',
        'object': 'chat.completion',
        'created': 1,
        'model': 'deepseek-chat',
        'choices': [
          {
            'index': 0,
            'message': {'role': 'assistant'},
          },
        ],
      });
      expect(res.systemFingerprint, isNull);
      expect(res.usage, isNull);
      expect(res.choices.first.finishReason, isNull);
      expect(res.choices.first.message.content, isNull);
    });
  });

  group('ModelList.fromJson', () {
    test('parses the model list', () {
      final list = ModelList.fromJson({
        'object': 'list',
        'data': [
          {'id': 'deepseek-chat', 'object': 'model', 'owned_by': 'deepseek'},
          {
            'id': 'deepseek-reasoner',
            'object': 'model',
            'owned_by': 'deepseek',
          },
        ],
      });
      expect(list.data, hasLength(2));
      expect(list.data.first.id, 'deepseek-chat');
      expect(list.data.first.ownedBy, 'deepseek');
    });
  });

  group('DeepSeek client', () {
    test('is an LLMAIBase with the api key set', () {
      final ai = DeepSeek(apiKey: 'sk-test');
      expect(ai.apiKey, 'sk-test');
      expect(ai, isA<LLMAIBase>());
    });
  });
}
