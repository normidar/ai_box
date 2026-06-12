import 'package:ai_box/ai_box.dart';
import 'package:minimax_box/minimax_box.dart';
import 'package:test/test.dart';

void main() {
  group('ChatCompletionResponse.fromJson', () {
    final json = <String, dynamic>{
      'id': 'chatcmpl-123',
      'object': 'chat.completion',
      'created': 1721260800,
      'model': 'MiniMax-Text-01',
      'input_sensitive': false,
      'output_sensitive': false,
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
      },
    };

    test('parses a full response', () {
      final res = ChatCompletionResponse.fromJson(json);
      expect(res.id, 'chatcmpl-123');
      expect(res.model, 'MiniMax-Text-01');
      expect(res.inputSensitive, isFalse);
      expect(res.outputSensitive, isFalse);
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
    });

    test('tolerates missing optional fields', () {
      final res = ChatCompletionResponse.fromJson({
        'id': 'chatcmpl-1',
        'object': 'chat.completion',
        'created': 1,
        'model': 'MiniMax-Text-01',
        'choices': [
          {
            'index': 0,
            'message': {'role': 'assistant'},
          },
        ],
      });
      expect(res.inputSensitive, isNull);
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
          {'id': 'MiniMax-Text-01', 'object': 'model', 'owned_by': 'minimax'},
        ],
      });
      expect(list.data, hasLength(1));
      expect(list.data.first.id, 'MiniMax-Text-01');
      expect(list.data.first.ownedBy, 'minimax');
    });
  });

  group('MiniMax client', () {
    test('is an LLMAIBase with the api key set', () {
      final ai = MiniMax(apiKey: 'test-key');
      expect(ai.apiKey, 'test-key');
      expect(ai, isA<LLMAIBase>());
    });
  });
}
