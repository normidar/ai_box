import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:qwen_box/qwen_box.dart';
import 'package:test/test.dart';

void main() {
  group('Qwen client', () {
    test('exposes apiKey and is an LLMAIBase', () {
      final ai = Qwen(apiKey: 'test-key');
      expect(ai.apiKey, 'test-key');
      expect(ai, isA<LLMAIBase>());
    });
  });

  group('ChatCompletion freezed models', () {
    test('request serializes to OpenAI-shaped JSON', () {
      final req = ChatCompletionRequest(
        model: 'qwen-plus',
        messages: [
          ChatCompletionMessage(role: ChatCompletionRole.user, content: 'hi'),
        ],
        maxTokens: 16,
      );
      // toJson() keeps nested objects; the wire payload is produced when the
      // map is encoded (as JsonRequestBody does), so round-trip through JSON.
      final json = jsonDecode(jsonEncode(req.toJson())) as Map<String, dynamic>;
      expect(json['model'], 'qwen-plus');
      expect(json['max_tokens'], 16);
      final msg = (json['messages'] as List).first as Map<String, dynamic>;
      expect(msg['role'], 'user');
      expect(msg['content'], 'hi');
    });

    test('response parses choices + usage', () {
      final res = ChatCompletionResponse.fromJson({
        'id': 'x',
        'object': 'chat.completion',
        'created': 1,
        'model': 'qwen-plus',
        'choices': [
          {
            'index': 0,
            'finish_reason': 'stop',
            'message': {'role': 'assistant', 'content': 'hello'},
          },
        ],
        'usage': {
          'prompt_tokens': 3,
          'completion_tokens': 5,
          'total_tokens': 8,
        },
      });
      expect(res.choices.single.message.content, 'hello');
      expect(res.choices.single.finishReason, 'stop');
      expect(res.usage?.totalTokens, 8);
    });

    test('ModelList parses model entries', () {
      final list = ModelList.fromJson({
        'object': 'list',
        'data': [
          {'id': 'qwen-max', 'object': 'model', 'owned_by': 'm'},
        ],
      });
      expect(list.data.single.id, 'qwen-max');
    });
  });

  group('buildOpenAiBody', () {
    test('text message maps to role + content with sampling params', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [LLMContent.user('hi')],
          maxTokens: 10,
          temperature: 0.5,
        ),
        maxTokensKey: 'max_tokens',
      );
      expect(body['model'], 'm');
      expect(body['max_tokens'], 10);
      expect(body['temperature'], 0.5);
      final msg = (body['messages'] as List).single as Map<String, dynamic>;
      expect(msg['role'], 'user');
      expect(msg['content'], 'hi');
    });

    test('image attachment becomes a content array with image_url', () {
      final bytes = Uint8List.fromList(utf8.encode('img'));
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [
            LLMContent.user('see', attachments: [LLMImagePart.bytes(bytes)]),
          ],
        ),
        maxTokensKey: 'max_tokens',
      );
      final msg = (body['messages'] as List).single as Map<String, dynamic>;
      final content = msg['content'] as List;
      expect((content[0] as Map<String, dynamic>)['type'], 'text');
      expect((content[1] as Map<String, dynamic>)['type'], 'image_url');
    });

    test('tools are mapped to function definitions', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [LLMContent.user('x')],
          tools: const [
            LLMTool(
              name: 'get_weather',
              description: 'weather',
              parameters: {'type': 'object'},
            ),
          ],
          toolChoice: LLMToolChoice.auto,
        ),
        maxTokensKey: 'max_tokens',
      );
      final tool = (body['tools'] as List).single as Map<String, dynamic>;
      expect(tool['type'], 'function');
      expect((tool['function'] as Map<String, dynamic>)['name'], 'get_weather');
      expect(body['tool_choice'], 'auto');
    });
  });

  group('parseOpenAiResponse', () {
    test('text, usage, finish reason, model and id', () {
      final res = parseOpenAiResponse({
        'id': 'r',
        'model': 'm',
        'choices': [
          {
            'finish_reason': 'stop',
            'message': {'role': 'assistant', 'content': 'hello'},
          },
        ],
        'usage': {'prompt_tokens': 2, 'completion_tokens': 3},
      });
      expect(res.text, 'hello');
      expect(res.finishReason, LLMFinishReason.stop);
      expect(res.usage.inputTokens, 2);
      expect(res.usage.outputTokens, 3);
      expect(res.model, 'm');
      expect(res.id, 'r');
    });

    test('tool calls are parsed into LLMToolCallPart', () {
      final res = parseOpenAiResponse({
        'choices': [
          {
            'finish_reason': 'tool_calls',
            'message': {
              'role': 'assistant',
              'content': null,
              'tool_calls': [
                {
                  'id': 'c1',
                  'type': 'function',
                  'function': {'name': 'f', 'arguments': '{"a":1}'},
                },
              ],
            },
          },
        ],
      });
      final call = res.content.parts.whereType<LLMToolCallPart>().single;
      expect(call.id, 'c1');
      expect(call.name, 'f');
      expect(call.arguments, {'a': 1});
      expect(res.finishReason, LLMFinishReason.toolCalls);
    });

    test('reasoning_content becomes an LLMReasoningPart', () {
      final res = parseOpenAiResponse({
        'choices': [
          {
            'message': {
              'role': 'assistant',
              'reasoning_content': 'think',
              'content': 'ans',
            },
          },
        ],
      });
      expect(res.content.reasoning, 'think');
      expect(res.text, 'ans');
    });
  });
}
