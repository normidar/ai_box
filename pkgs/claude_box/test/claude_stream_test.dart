import 'package:ai_box/ai_box.dart';
import 'package:claude_box/claude_box.dart';
import 'package:test/test.dart';

/// Claude の SSE ストリーミングイベント解析（claude_stream.dart）の検証。
void main() {
  group('claudeChunksFromEvents', () {
    test('streams text deltas and assembles the final chunk with usage',
        () async {
      final chunks = await claudeChunksFromEvents(
        Stream.fromIterable([
          {
            'type': 'message_start',
            'message': {
              'id': 'msg_1',
              'usage': {
                'input_tokens': 10,
                'output_tokens': 1,
                'cache_read_input_tokens': 4,
              },
            },
          },
          {
            'type': 'content_block_start',
            'index': 0,
            'content_block': {'type': 'text', 'text': ''},
          },
          {
            'type': 'content_block_delta',
            'index': 0,
            'delta': {'type': 'text_delta', 'text': 'Hel'},
          },
          {
            'type': 'content_block_delta',
            'index': 0,
            'delta': {'type': 'text_delta', 'text': 'lo'},
          },
          {'type': 'content_block_stop', 'index': 0},
          {
            'type': 'message_delta',
            'delta': {'stop_reason': 'end_turn', 'stop_sequence': null},
            'usage': {'output_tokens': 12},
          },
          {'type': 'message_stop'},
        ]),
      ).toList();

      expect(chunks.map((c) => c.delta).join(), 'Hello');
      final last = chunks.last;
      expect(last.isDone, isTrue);
      expect(last.finishReason, LLMFinishReason.stop);
      expect((last.parts!.single as LLMTextPart).text, 'Hello');
      expect(last.usage!.inputTokens, 10);
      expect(last.usage!.outputTokens, 12);
      expect(last.usage!.cachedInputTokens, 4);
    });

    test('assembles thinking and tool_use blocks across events', () async {
      final chunks = await claudeChunksFromEvents(
        Stream.fromIterable([
          {
            'type': 'content_block_start',
            'index': 0,
            'content_block': {'type': 'thinking', 'thinking': ''},
          },
          {
            'type': 'content_block_delta',
            'index': 0,
            'delta': {'type': 'thinking_delta', 'thinking': 'hmm'},
          },
          {
            'type': 'content_block_delta',
            'index': 0,
            'delta': {'type': 'signature_delta', 'signature': 'sig'},
          },
          {
            'type': 'content_block_start',
            'index': 1,
            'content_block': {
              'type': 'tool_use',
              'id': 'toolu_1',
              'name': 'get_weather',
              'input': <String, dynamic>{},
            },
          },
          {
            'type': 'content_block_delta',
            'index': 1,
            'delta': {'type': 'input_json_delta', 'partial_json': '{"city"'},
          },
          {
            'type': 'content_block_delta',
            'index': 1,
            'delta': {'type': 'input_json_delta', 'partial_json': ':"Osaka"}'},
          },
          {
            'type': 'message_delta',
            'delta': {'stop_reason': 'tool_use'},
            'usage': {'output_tokens': 7},
          },
        ]),
      ).toList();

      expect(chunks.map((c) => c.reasoningDelta).join(), 'hmm');
      final last = chunks.last;
      expect(last.finishReason, LLMFinishReason.toolCalls);
      final reasoningPart = last.parts![0] as LLMReasoningPart;
      expect(reasoningPart.text, 'hmm');
      expect(reasoningPart.signature, 'sig');
      final call = last.parts![1] as LLMToolCallPart;
      expect(call.id, 'toolu_1');
      expect(call.name, 'get_weather');
      expect(call.arguments, {'city': 'Osaka'});
    });

    test('throws a typed exception on an error event', () async {
      await expectLater(
        claudeChunksFromEvents(
          Stream.fromIterable([
            {
              'type': 'error',
              'error': {'type': 'overloaded_error', 'message': 'Overloaded'},
            },
          ]),
        ).toList(),
        throwsA(
          isA<LLMServerException>()
              .having((e) => e.message, 'message', 'Overloaded')
              .having((e) => e.code, 'code', 'overloaded_error'),
        ),
      );
    });
  });

  group('claudeStreamErrorToException', () {
    test('maps Anthropic error types to the LLMException hierarchy', () {
      LLMException map(String type) =>
          claudeStreamErrorToException({'type': type, 'message': 'm'});
      expect(map('authentication_error'), isA<LLMAuthException>());
      expect(map('permission_error'), isA<LLMAuthException>());
      expect(map('rate_limit_error'), isA<LLMRateLimitException>());
      expect(map('invalid_request_error'), isA<LLMInvalidRequestException>());
      expect(map('not_found_error'), isA<LLMInvalidRequestException>());
      expect(map('api_error'), isA<LLMServerException>());
      expect(map('overloaded_error'), isA<LLMServerException>());
      expect(map('mystery'), isA<LLMUnknownException>());
    });
  });
}
