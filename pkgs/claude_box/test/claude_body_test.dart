import 'package:ai_box/ai_box.dart';
import 'package:claude_box/claude_box.dart';
import 'package:test/test.dart';

/// リクエストボディの組み立て（claude.dart の buildClaudeBody）の検証。
void main() {
  const tool = LLMTool(
    name: 'get_time',
    description: 'Current time.',
    parameters: {'type': 'object', 'properties': <String, dynamic>{}},
  );
  LLMCompletionRequest request({bool withSystem = true}) =>
      LLMCompletionRequest(
        model: 'claude-x',
        messages: [
          if (withSystem) LLMContent.system('Be brief.'),
          LLMContent.user('hi'),
          LLMContent.model('hello'),
          LLMContent.user('time?'),
        ],
        tools: const [tool],
      );

  group('buildClaudeBody', () {
    test('sends no cache_control by default', () {
      final body = buildClaudeBody(request());
      expect(body['system'], 'Be brief.');
      expect(body.toString(), isNot(contains('cache_control')));
    });

    test('marks the system prompt and the last message block', () {
      final body = buildClaudeBody(request(), promptCaching: true);
      expect(body['system'], [
        {
          'type': 'text',
          'text': 'Be brief.',
          'cache_control': {'type': 'ephemeral'},
        },
      ]);
      final tools = body['tools'] as List;
      expect((tools.single as Map).containsKey('cache_control'), isFalse);
      final messages = body['messages'] as List;
      final last = (messages.last as Map)['content'] as List;
      expect((last.last as Map)['cache_control'], {'type': 'ephemeral'});
      final first = (messages.first as Map)['content'] as List;
      expect((first.single as Map).containsKey('cache_control'), isFalse);
    });

    test('marks the last tool when there is no system prompt', () {
      final body = buildClaudeBody(
        request(withSystem: false),
        promptCaching: true,
      );
      expect(body.containsKey('system'), isFalse);
      final tools = body['tools'] as List;
      expect((tools.last as Map)['cache_control'], {'type': 'ephemeral'});
    });

    const oneHour = {'type': 'ephemeral', 'ttl': '1h'};

    test('one-hour TTL marks every breakpoint with ttl 1h', () {
      final body = buildClaudeBody(
        request(),
        promptCaching: true,
        promptCacheTtl: ClaudeCacheTtl.oneHour,
      );
      final system = body['system'] as List;
      expect((system.single as Map)['cache_control'], oneHour);
      final messages = body['messages'] as List;
      final last = (messages.last as Map)['content'] as List;
      expect((last.last as Map)['cache_control'], oneHour);
    });

    test('one-hour TTL on the tool breakpoint when there is no system', () {
      final body = buildClaudeBody(
        request(withSystem: false),
        promptCaching: true,
        promptCacheTtl: ClaudeCacheTtl.oneHour,
      );
      final tools = body['tools'] as List;
      expect((tools.last as Map)['cache_control'], oneHour);
    });

    test('default TTL sends no ttl', () {
      final body = buildClaudeBody(request(), promptCaching: true);
      expect(body.toString(), isNot(contains('ttl')));
    });

    test('TTL is ignored without promptCaching', () {
      final body = buildClaudeBody(
        request(),
        promptCacheTtl: ClaudeCacheTtl.oneHour,
      );
      expect(body.toString(), isNot(contains('cache_control')));
    });

    test('Claude keeps the TTL it was given', () {
      final ai = Claude(
        apiKey: 'k',
        promptCaching: true,
        promptCacheTtl: ClaudeCacheTtl.oneHour,
      );
      expect(ai.promptCacheTtl, ClaudeCacheTtl.oneHour);
      expect(Claude(apiKey: 'k').promptCacheTtl, ClaudeCacheTtl.fiveMinutes);
    });
  });
}
