import 'package:ai_box/ai_box.dart';
import 'package:grok_box/grok_box.dart';
import 'package:test/test.dart';

void main() {
  group('ChatCompletionResponse.fromJson', () {
    final json = <String, dynamic>{
      'id': 'chatcmpl-123',
      'object': 'chat.completion',
      'created': 1721260800,
      'model': 'grok-3',
      'choices': [
        {
          'index': 0,
          'message': {
            'role': 'assistant',
            'content': 'Hello!',
          },
          'finish_reason': 'stop',
        },
      ],
      'usage': {
        'prompt_tokens': 10,
        'completion_tokens': 5,
        'total_tokens': 15,
        'number_searches': 0,
        'prompt_tokens_details': {
          'audio_tokens': 0,
          'cached_tokens': 2,
          'image_tokens': 0,
          'text_tokens': 10,
        },
        'completion_tokens_details': {
          'accepted_prediction_tokens': 0,
          'audio_tokens': 0,
          'reasoning_tokens': 3,
          'rejected_prediction_tokens': 0,
        },
      },
    };

    test('parses a full response', () {
      final res = ChatCompletionResponse.fromJson(json);
      expect(res.id, 'chatcmpl-123');
      expect(res.model, 'grok-3');
      expect(res.choices, hasLength(1));
      expect(res.choices.first.message.content, 'Hello!');
      expect(res.choices.first.finishReason, 'stop');
      expect(res.usage?.promptTokens, 10);
      expect(res.usage?.totalTokens, 15);
      expect(res.usage?.promptTokensDetails?.cachedTokens, 2);
      expect(res.usage?.completionTokensDetails?.reasoningTokens, 3);
    });

    test('tolerates missing optional fields', () {
      final res = ChatCompletionResponse.fromJson({
        'id': 'chatcmpl-1',
        'object': 'chat.completion',
        'created': 1,
        'model': 'grok-3',
        'choices': [
          {
            'index': 0,
            'message': {'role': 'assistant'},
          },
        ],
      });
      expect(res.usage, isNull);
      expect(res.citations, isNull);
      expect(res.choices.first.finishReason, isNull);
    });
  });

  group('ModelList.fromJson', () {
    test('parses the model list', () {
      final list = ModelList.fromJson({
        'object': 'list',
        'data': [
          {
            'id': 'grok-3',
            'created': 1721260800,
            'object': 'model',
            'owned_by': 'xai',
          },
        ],
      });
      expect(list.data, hasLength(1));
      expect(list.data.first.id, 'grok-3');
      expect(list.data.first.created, 1721260800);
    });
  });

  group('ApiKeyInfo.fromJson', () {
    test('parses the api-key endpoint response', () {
      final info = ApiKeyInfo.fromJson({
        'acls': ['api-key:model:*', 'api-key:endpoint:*'],
        'api_key_blocked': false,
        'api_key_disabled': false,
        'api_key_id': 'key-id',
        'create_time': '2024-01-01T00:00:00Z',
        'modified_by': 'user-1',
        'modify_time': '2024-01-02T00:00:00Z',
        'name': 'my key',
        'redacted_api_key': 'xai-...abc',
        'team_blocked': false,
        'team_id': 'team-1',
        'user_id': 'user-1',
      });
      expect(info.apiKeyBlocked, isFalse);
      expect(info.apiKeyDisabled, isFalse);
      expect(info.teamBlocked, isFalse);
      expect(info.acls, hasLength(2));
      expect(info.name, 'my key');
    });
  });

  group('Grok client', () {
    test('is an LLMAIBase with the api key set', () {
      final ai = Grok(apiKey: 'xai-test');
      expect(ai.apiKey, 'xai-test');
      expect(ai, isA<LLMAIBase>());
    });
  });
}
