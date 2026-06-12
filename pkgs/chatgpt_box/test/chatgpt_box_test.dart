import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/chatgpt_box.dart';
import 'package:test/test.dart';

void main() {
  group('ChatCompletionObject.fromJson', () {
    final json = <String, dynamic>{
      'id': 'chatcmpl-123',
      'object': 'chat.completion',
      'created': 1721260800,
      'model': 'gpt-4o-mini',
      'system_fingerprint': 'fp_abc',
      'service_tier': 'default',
      'choices': [
        {
          'index': 0,
          'finish_reason': 'stop',
          'message': {
            'role': 'assistant',
            'content': 'Hello!',
          },
        },
      ],
      'usage': {
        'prompt_tokens': 10,
        'completion_tokens': 5,
        'total_tokens': 15,
        'completion_tokens_details': {
          'accepted_prediction_tokens': 0,
          'audio_tokens': 0,
          'reasoning_tokens': 0,
          'rejected_prediction_tokens': 0,
        },
        'prompt_tokens_details': {
          'audio_tokens': 0,
          'cached_tokens': 2,
        },
      },
    };

    test('parses a full response', () {
      final res = ChatCompletionObject.fromJson(json);
      expect(res.id, 'chatcmpl-123');
      expect(res.model, 'gpt-4o-mini');
      expect(res.systemFingerprint, 'fp_abc');
      expect(res.serviceTier, 'default');
      expect(res.choices, hasLength(1));
      expect(res.choices.first.message.content, 'Hello!');
      expect(res.choices.first.finishReason, 'stop');
      expect(res.usage.promptTokens, 10);
      expect(res.usage.completionTokens, 5);
      expect(res.usage.totalTokens, 15);
      expect(res.usage.promptTokensDetails.cachedTokens, 2);
    });

    test('parses a tool-call message', () {
      final res = ChatCompletionObject.fromJson({
        ...json,
        'choices': [
          {
            'index': 0,
            'finish_reason': 'tool_calls',
            'message': {
              'role': 'assistant',
              'content': null,
              'tool_calls': [
                {
                  'id': 'call_1',
                  'type': 'function',
                  'function': {
                    'name': 'get_weather',
                    'arguments': '{"city":"Tokyo"}',
                  },
                },
              ],
            },
          },
        ],
      });
      final message = res.choices.first.message;
      expect(res.choices.first.finishReason, 'tool_calls');
      expect(message.content, isNull);
      expect(message.toolCalls, hasLength(1));
      expect(message.toolCalls?.first['id'], 'call_1');
    });
  });

  group('ModelList.fromJson', () {
    test('parses the model list', () {
      final list = ModelList.fromJson({
        'object': 'list',
        'data': [
          {
            'id': 'gpt-4o-mini',
            'object': 'model',
            'created': 1721260800,
            'owned_by': 'openai',
          },
        ],
      });
      expect(list.data, hasLength(1));
      expect(list.data.first.id, 'gpt-4o-mini');
      expect(list.data.first.ownedBy, 'openai');
    });
  });

  group('ChatGPT client', () {
    test('is an LLMAIBase with the api key set', () {
      final ai = ChatGPT(apiKey: 'sk-test');
      expect(ai.apiKey, 'sk-test');
      expect(ai, isA<LLMAIBase>());
    });
  });
}
