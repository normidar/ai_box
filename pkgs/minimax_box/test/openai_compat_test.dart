import 'package:ai_box/ai_box.dart';
import 'package:minimax_box/src/openai_compat.dart';
import 'package:test/test.dart';

/// OpenAI 互換レイヤー（openai_compat.dart）の検証。
///
/// このファイルは OpenAI 互換の各プロバイダーパッケージに複製されている
/// 実装の、リクエスト構築とレスポンス解析を確認する。
void main() {
  group('buildOpenAiBody', () {
    test('maps request fields to the OpenAI wire format', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [
            LLMContent.system('sys'),
            LLMContent.user('hi'),
            LLMContent.model('hello'),
          ],
          maxTokens: 100,
          temperature: 0.5,
          topP: 0.9,
          stop: ['END'],
          seed: 42,
          frequencyPenalty: 0.1,
          presencePenalty: 0.2,
        ),
        maxTokensKey: 'max_tokens',
      );
      expect(body['model'], 'm');
      expect(body['max_tokens'], 100);
      expect(body['temperature'], 0.5);
      expect(body['top_p'], 0.9);
      expect(body['stop'], ['END']);
      expect(body['seed'], 42);
      expect(body['frequency_penalty'], 0.1);
      expect(body['presence_penalty'], 0.2);
      expect(body['messages'], [
        {'role': 'system', 'content': 'sys'},
        {'role': 'user', 'content': 'hi'},
        {'role': 'assistant', 'content': 'hello'},
      ]);
    });

    test('honors a custom max tokens key', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [LLMContent.user('x')],
          maxTokens: 5,
        ),
        maxTokensKey: 'max_completion_tokens',
      );
      expect(body['max_completion_tokens'], 5);
      expect(body.containsKey('max_tokens'), isFalse);
    });

    test('encodes tools and a forced tool choice', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [LLMContent.user('x')],
          tools: [
            const LLMTool(
              name: 'get_weather',
              description: 'd',
              parameters: {'type': 'object'},
            ),
          ],
          toolChoice: LLMToolChoice.tool('get_weather'),
        ),
        maxTokensKey: 'max_tokens',
      );
      final tools = body['tools'] as List;
      final fn = (tools.single as Map)['function'] as Map;
      expect(fn['name'], 'get_weather');
      expect(body['tool_choice'], {
        'type': 'function',
        'function': {'name': 'get_weather'},
      });
    });

    test('sends tool results as role:tool messages', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [
            LLMContent(
              role: LLMRole.user,
              parts: [
                LLMToolResultPart(toolCallId: 'call_1', content: '{"ok":true}'),
              ],
            ),
          ],
        ),
        maxTokensKey: 'max_tokens',
      );
      expect(body['messages'], [
        {'role': 'tool', 'tool_call_id': 'call_1', 'content': '{"ok":true}'},
      ]);
    });

    test('encodes a json_schema response format', () {
      final body = buildOpenAiBody(
        LLMCompletionRequest(
          model: 'm',
          messages: [LLMContent.user('x')],
          responseFormat: LLMResponseFormat.jsonSchema(
            schema: {'type': 'object'},
            schemaName: 'res',
          ),
        ),
        maxTokensKey: 'max_tokens',
      );
      expect(body['response_format'], {
        'type': 'json_schema',
        'json_schema': {
          'name': 'res',
          'schema': {'type': 'object'},
          'strict': true,
        },
      });
    });
  });

  group('parseOpenAiResponse', () {
    test('parses text, usage and finish reason', () {
      final res = parseOpenAiResponse({
        'id': 'chatcmpl-1',
        'model': 'm-1',
        'choices': [
          {
            'message': {'role': 'assistant', 'content': 'hello'},
            'finish_reason': 'stop',
          },
        ],
        'usage': {
          'prompt_tokens': 10,
          'completion_tokens': 3,
          'prompt_tokens_details': {'cached_tokens': 4},
          'completion_tokens_details': {'reasoning_tokens': 2},
        },
      });
      expect(res.text, 'hello');
      expect(res.id, 'chatcmpl-1');
      expect(res.model, 'm-1');
      expect(res.finishReason, LLMFinishReason.stop);
      expect(res.usage.inputTokens, 10);
      expect(res.usage.outputTokens, 3);
      expect(res.usage.cachedInputTokens, 4);
      expect(res.usage.reasoningTokens, 2);
    });

    test('parses reasoning from reasoning_content or reasoning', () {
      for (final key in ['reasoning_content', 'reasoning']) {
        final res = parseOpenAiResponse({
          'choices': [
            {
              'message': {'role': 'assistant', 'content': 'a', key: 'because'},
              'finish_reason': 'stop',
            },
          ],
        });
        expect(res.content.reasoning, 'because', reason: key);
        expect(res.text, 'a', reason: key);
      }
    });

    test('parses tool calls with JSON-string arguments', () {
      final res = parseOpenAiResponse({
        'choices': [
          {
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
            'finish_reason': 'tool_calls',
          },
        ],
      });
      expect(res.finishReason, LLMFinishReason.toolCalls);
      final call = res.toolCalls.single;
      expect(call.id, 'call_1');
      expect(call.name, 'get_weather');
      expect(call.arguments, {'city': 'Tokyo'});
    });

    test('tolerates an empty response', () {
      final res = parseOpenAiResponse({});
      expect(res.text, '');
      expect(res.finishReason, LLMFinishReason.other);
      expect(res.usage.totalTokens, 0);
    });
  });
}
