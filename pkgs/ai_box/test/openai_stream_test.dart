import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:test/test.dart';

/// OpenAI 互換ストリーミング（openai_compat.dart の
/// openAiChunksFromEvents / streamOpenAiCompletions）の検証。
void main() {
  Map<String, dynamic> deltaEvent(
    Map<String, dynamic> delta, {
    String? finishReason,
  }) =>
      {
        'choices': [
          {'index': 0, 'delta': delta, 'finish_reason': finishReason},
        ],
      };

  group('openAiChunksFromEvents', () {
    test('streams text deltas and assembles the final chunk', () async {
      final chunks = await openAiChunksFromEvents(
        Stream.fromIterable([
          deltaEvent({'role': 'assistant', 'content': ''}),
          deltaEvent({'content': 'Hel'}),
          deltaEvent({'content': 'lo'}),
          deltaEvent({}, finishReason: 'stop'),
        ]),
      ).toList();

      expect(chunks.map((c) => c.delta).join(), 'Hello');
      final last = chunks.last;
      expect(last.isDone, isTrue);
      expect(last.finishReason, LLMFinishReason.stop);
      expect(last.parts, hasLength(1));
      expect((last.parts!.single as LLMTextPart).text, 'Hello');
      // 最終チャンク以外は isDone にならない。
      expect(chunks.sublist(0, chunks.length - 1).any((c) => c.isDone), false);
    });

    test('streams reasoning deltas separately from text', () async {
      final chunks = await openAiChunksFromEvents(
        Stream.fromIterable([
          deltaEvent({'reasoning_content': 'think'}),
          deltaEvent({'reasoning': 'ing'}),
          deltaEvent({'content': 'answer'}),
          deltaEvent({}, finishReason: 'stop'),
        ]),
      ).toList();

      expect(chunks.map((c) => c.reasoningDelta).join(), 'thinking');
      expect(chunks.map((c) => c.delta).join(), 'answer');
      final parts = chunks.last.parts!;
      expect((parts[0] as LLMReasoningPart).text, 'thinking');
      expect((parts[1] as LLMTextPart).text, 'answer');
    });

    test('assembles tool calls across chunks', () async {
      final chunks = await openAiChunksFromEvents(
        Stream.fromIterable([
          deltaEvent({
            'tool_calls': [
              {
                'index': 0,
                'id': 'call_1',
                'type': 'function',
                'function': {'name': 'get_weather', 'arguments': ''},
              },
            ],
          }),
          deltaEvent({
            'tool_calls': [
              {
                'index': 0,
                'function': {'arguments': '{"city":'},
              },
            ],
          }),
          deltaEvent({
            'tool_calls': [
              {
                'index': 0,
                'function': {'arguments': '"Tokyo"}'},
              },
            ],
          }),
          deltaEvent({}, finishReason: 'tool_calls'),
        ]),
      ).toList();

      final last = chunks.last;
      expect(last.finishReason, LLMFinishReason.toolCalls);
      final call = last.parts!.whereType<LLMToolCallPart>().single;
      expect(call.id, 'call_1');
      expect(call.name, 'get_weather');
      expect(call.arguments, {'city': 'Tokyo'});
    });

    test('captures usage from a trailing usage-only chunk', () async {
      final chunks = await openAiChunksFromEvents(
        Stream.fromIterable([
          deltaEvent({'content': 'hi'}, finishReason: 'stop'),
          {
            'choices': <dynamic>[],
            'usage': {
              'prompt_tokens': 3,
              'completion_tokens': 5,
              'prompt_tokens_details': {'cached_tokens': 2},
            },
          },
        ]),
      ).toList();

      final usage = chunks.last.usage;
      expect(usage, isNotNull);
      expect(usage!.inputTokens, 3);
      expect(usage.outputTokens, 5);
      expect(usage.cachedInputTokens, 2);
    });

    test('throws a typed exception on an error event with an HTTP code',
        () async {
      await expectLater(
        openAiChunksFromEvents(
          Stream.fromIterable([
            {
              'error': {'code': 429, 'message': 'slow down'},
            },
          ]),
          provider: 'openrouter',
        ).toList(),
        throwsA(isA<LLMRateLimitException>()),
      );
    });

    test('throws LLMUnknownException on an error event without a code',
        () async {
      await expectLater(
        openAiChunksFromEvents(
          Stream.fromIterable([
            {
              'error': {'message': 'boom', 'type': 'server_error'},
            },
          ]),
        ).toList(),
        throwsA(
          isA<LLMUnknownException>()
              .having((e) => e.message, 'message', 'boom')
              .having((e) => e.code, 'code', 'server_error'),
        ),
      );
    });

    test('falls back to other when no finish_reason arrives', () async {
      final chunks = await openAiChunksFromEvents(
        Stream.fromIterable([
          deltaEvent({'content': 'x'}),
        ]),
      ).toList();
      expect(chunks.last.finishReason, LLMFinishReason.other);
    });
  });

  group('streamOpenAiCompletions', () {
    test('posts stream:true and parses the SSE response end-to-end', () async {
      late Map<String, dynamic> receivedBody;
      String? receivedAuth;
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(() => server.close(force: true));
      server.listen((request) async {
        receivedAuth = request.headers.value('authorization');
        receivedBody = jsonDecode(await utf8.decoder.bind(request).join())
            as Map<String, dynamic>;
        request.response.headers.contentType =
            ContentType('text', 'event-stream');
        Map<String, dynamic> ev(Map<String, dynamic> delta, [String? fin]) => {
              'choices': [
                {'index': 0, 'delta': delta, 'finish_reason': fin},
              ],
            };
        request.response.write(
          'data: ${jsonEncode(ev({'content': 'Hi'}))}\n\n'
          'data: ${jsonEncode(ev({}, 'stop'))}\n\n'
          'data: [DONE]\n\n',
        );
        await request.response.close();
      });

      final chunks = await streamOpenAiCompletions(
        url: 'http://127.0.0.1:${server.port}/v1/chat/completions',
        apiKey: 'sk-test',
        provider: 'openai',
        request: LLMCompletionRequest(
          model: 'gpt-4o',
          messages: [LLMContent.user('hello')],
          maxTokens: 10,
        ),
        maxTokensKey: 'max_completion_tokens',
        includeUsage: true,
      ).toList();

      expect(receivedAuth, 'Bearer sk-test');
      expect(receivedBody['stream'], true);
      expect(receivedBody['stream_options'], {'include_usage': true});
      expect(receivedBody['max_completion_tokens'], 10);
      expect(chunks.map((c) => c.delta).join(), 'Hi');
      expect(chunks.last.finishReason, LLMFinishReason.stop);
    });
  });
}
