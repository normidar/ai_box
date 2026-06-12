import 'package:ai_box/ai_box.dart';
import 'package:gemini_box/gemini_box.dart';
import 'package:test/test.dart';

/// Gemini の SSE ストリーミング解析（gemini_stream.dart）の検証。
void main() {
  Map<String, dynamic> event(
    List<Map<String, dynamic>> parts, {
    String? finishReason,
    Map<String, dynamic>? usage,
  }) =>
      {
        'candidates': [
          {
            'content': {'parts': parts, 'role': 'model'},
            if (finishReason != null) 'finishReason': finishReason,
          },
        ],
        if (usage != null) 'usageMetadata': usage,
      };

  group('geminiChunksFromEvents', () {
    test('streams text deltas and assembles the final chunk', () async {
      final chunks = await geminiChunksFromEvents(
        Stream.fromIterable([
          event([
            {'text': 'Hel'},
          ]),
          event(
            [
              {'text': 'lo'},
            ],
            finishReason: 'STOP',
            usage: {
              'promptTokenCount': 4,
              'candidatesTokenCount': 6,
              'thoughtsTokenCount': 2,
            },
          ),
        ]),
      ).toList();

      expect(chunks.map((c) => c.delta).join(), 'Hello');
      final last = chunks.last;
      expect(last.isDone, isTrue);
      expect(last.finishReason, LLMFinishReason.stop);
      expect((last.parts!.single as LLMTextPart).text, 'Hello');
      expect(last.usage!.inputTokens, 4);
      expect(last.usage!.outputTokens, 6);
      expect(last.usage!.reasoningTokens, 2);
    });

    test('separates thought parts as reasoning deltas', () async {
      final chunks = await geminiChunksFromEvents(
        Stream.fromIterable([
          event([
            {'text': 'plan', 'thought': true},
          ]),
          event(
            [
              {'text': 'answer'},
            ],
            finishReason: 'STOP',
          ),
        ]),
      ).toList();

      expect(chunks.map((c) => c.reasoningDelta).join(), 'plan');
      expect(chunks.map((c) => c.delta).join(), 'answer');
      final parts = chunks.last.parts!;
      expect((parts[0] as LLMReasoningPart).text, 'plan');
      expect((parts[1] as LLMTextPart).text, 'answer');
    });

    test('collects function calls into the final chunk', () async {
      final chunks = await geminiChunksFromEvents(
        Stream.fromIterable([
          event(
            [
              {
                'functionCall': {
                  'name': 'get_weather',
                  'args': {'city': 'Kyoto'},
                },
              },
            ],
            finishReason: 'STOP',
          ),
        ]),
      ).toList();

      final call = chunks.last.parts!.whereType<LLMToolCallPart>().single;
      expect(call.name, 'get_weather');
      expect(call.arguments, {'city': 'Kyoto'});
    });

    test('falls back to other when no finishReason arrives', () async {
      final chunks = await geminiChunksFromEvents(
        Stream.fromIterable([
          event([
            {'text': 'x'},
          ]),
        ]),
      ).toList();
      expect(chunks.last.finishReason, LLMFinishReason.other);
      expect(chunks.last.usage, isNull);
    });
  });

  group('geminiInlineDataToPart', () {
    test('maps MIME types to image / audio / file parts', () {
      // 'aGk=' は 'hi' の base64。
      expect(
        geminiInlineDataToPart({'mimeType': 'image/png', 'data': 'aGk='}),
        isA<LLMImagePart>(),
      );
      expect(
        geminiInlineDataToPart({'mimeType': 'audio/wav', 'data': 'aGk='}),
        isA<LLMAudioPart>(),
      );
      expect(
        geminiInlineDataToPart(
          {'mimeType': 'application/pdf', 'data': 'aGk='},
        ),
        isA<LLMFilePart>(),
      );
    });
  });
}
