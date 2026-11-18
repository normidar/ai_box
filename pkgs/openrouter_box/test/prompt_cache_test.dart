import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/openrouter_box.dart';
import 'package:test/test.dart';

/// プロンプトキャッシュ（applyOpenRouterPromptCache と OpenRouter への組み込み）の検証。
void main() {
  const ephemeral = {'type': 'ephemeral'};
  const oneHour = {'type': 'ephemeral', 'ttl': '1h'};

  /// 送るときと同じ型（`Map<String, dynamic>` / `List<dynamic>`）にする。
  Map<String, dynamic> wire(Map<String, Object?> body) =>
      jsonDecode(jsonEncode(body)) as Map<String, dynamic>;

  Map<String, dynamic> toolRound(String model) => wire({
    'model': model,
    'messages': [
      {'role': 'system', 'content': 'Be brief.'},
      {'role': 'user', 'content': 'time?'},
      {
        'role': 'assistant',
        'tool_calls': [
          {'id': 't1', 'type': 'function'},
        ],
      },
      {'role': 'tool', 'tool_call_id': 't1', 'content': '12:00'},
    ],
  });

  List<dynamic> messagesOf(Map<String, dynamic> body) =>
      body['messages'] as List<dynamic>;

  group('applyOpenRouterPromptCache', () {
    test('marks system and last message for anthropic', () {
      final body = toolRound('anthropic/claude-haiku-5.5');
      applyOpenRouterPromptCache(body, promptCaching: true);
      final messages = messagesOf(body);
      expect((messages[0] as Map)['content'], [
        {'type': 'text', 'text': 'Be brief.', 'cache_control': ephemeral},
      ]);
      expect((messages[1] as Map)['content'], 'time?');
      expect((messages[3] as Map)['content'], [
        {'type': 'text', 'text': '12:00', 'cache_control': ephemeral},
      ]);
    });

    test('marks qwen without ttl even for one hour', () {
      final body = toolRound('qwen/qwen3.8-flash');
      applyOpenRouterPromptCache(
        body,
        promptCaching: true,
        ttl: OpenRouterCacheTtl.oneHour,
      );
      final messages = messagesOf(body);
      final system = (messages[0] as Map)['content'] as List<dynamic>;
      expect((system.single as Map)['cache_control'], ephemeral);
      final last = (messages[3] as Map)['content'] as List<dynamic>;
      expect((last.single as Map)['cache_control'], ephemeral);
    });

    test('one hour adds ttl for anthropic', () {
      final body = toolRound('anthropic/claude-haiku-5.5');
      applyOpenRouterPromptCache(
        body,
        promptCaching: true,
        ttl: OpenRouterCacheTtl.oneHour,
      );
      final messages = messagesOf(body);
      final system = (messages[0] as Map)['content'] as List<dynamic>;
      expect((system.single as Map)['cache_control'], oneHour);
      final last = (messages[3] as Map)['content'] as List<dynamic>;
      expect((last.single as Map)['cache_control'], oneHour);
    });

    test('other models get no markers', () {
      for (final model in [
        'google/gemini-3.1-flash-lite',
        'deepseek/deepseek-v4.1-flash',
      ]) {
        final body = toolRound(model);
        applyOpenRouterPromptCache(body, promptCaching: true);
        expect(body, toolRound(model), reason: model);
      }
    });

    test(
      'falls back to the previous text when the last message is image-only',
      () {
        final body = wire({
          'model': 'anthropic/claude-haiku-5.5',
          'messages': [
            {'role': 'user', 'content': 'look'},
            {
              'role': 'user',
              'content': [
                {
                  'type': 'image_url',
                  'image_url': {'url': 'data:image/png;base64,AA'},
                },
              ],
            },
          ],
        });
        applyOpenRouterPromptCache(body, promptCaching: true);
        final messages = messagesOf(body);
        expect((messages[0] as Map)['content'], [
          {'type': 'text', 'text': 'look', 'cache_control': ephemeral},
        ]);
        final image = (messages[1] as Map)['content'] as List<dynamic>;
        expect((image.single as Map).containsKey('cache_control'), isFalse);
      },
    );

    test('multimodal message marks its last text part', () {
      final body = wire({
        'model': 'anthropic/claude-haiku-5.5',
        'messages': [
          {
            'role': 'user',
            'content': [
              {'type': 'text', 'text': 'what is this?'},
              {
                'type': 'image_url',
                'image_url': {'url': 'data:image/png;base64,AA'},
              },
            ],
          },
        ],
      });
      applyOpenRouterPromptCache(body, promptCaching: true);
      final parts = (messagesOf(body).single as Map)['content'] as List;
      expect((parts[0] as Map)['cache_control'], ephemeral);
      expect((parts[1] as Map).containsKey('cache_control'), isFalse);
    });

    test('sessionId is sent as-is for every model', () {
      final gemini = toolRound('google/gemini-3.1-flash-lite');
      applyOpenRouterPromptCache(gemini, promptCaching: true, sessionId: 'abc');
      expect(gemini['session_id'], 'abc');

      final noSession = toolRound('anthropic/claude-haiku-5.5');
      applyOpenRouterPromptCache(noSession, promptCaching: true);
      expect(noSession.containsKey('session_id'), isFalse);
    });

    test('nothing changes when promptCaching is false', () {
      final body = toolRound('anthropic/claude-haiku-5.5');
      applyOpenRouterPromptCache(
        body,
        promptCaching: false,
        ttl: OpenRouterCacheTtl.oneHour,
      );
      expect(body, toolRound('anthropic/claude-haiku-5.5'));
    });
  });

  group('OpenRouter sends the prompt cache settings', () {
    late HttpServer server;
    late List<Map<String, dynamic>> bodies;

    setUp(() async {
      bodies = [];
      server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))
        ..listen((request) async {
          final body =
              jsonDecode(await utf8.decoder.bind(request).join())
                  as Map<String, dynamic>;
          bodies.add(body);
          final message = {'role': 'assistant', 'content': 'ok'};
          if (body['stream'] == true) {
            request.response
              ..headers.contentType = ContentType('text', 'event-stream')
              ..write(
                'data: ${jsonEncode({
                  'choices': [
                    {'delta': message, 'finish_reason': 'stop'},
                  ],
                })}\n\n',
              )
              ..write('data: [DONE]\n\n');
          } else {
            request.response
              ..headers.contentType = ContentType.json
              ..write(
                jsonEncode({
                  'choices': [
                    {'message': message, 'finish_reason': 'stop'},
                  ],
                }),
              );
          }
          await request.response.close();
        });
    });
    tearDown(() => server.close(force: true));

    OpenRouter client({bool promptCaching = true}) => OpenRouter(
      apiKey: 'sk-or-test',
      baseUrl: 'http://127.0.0.1:${server.port}/api/v1',
      promptCaching: promptCaching,
      promptCacheTtl: OpenRouterCacheTtl.oneHour,
      sessionId: 'session-1',
    );

    final request = LLMCompletionRequest(
      model: 'anthropic/claude-haiku-5.5',
      messages: [LLMContent.system('Be brief.'), LLMContent.user('hi')],
    );

    test('completions', () async {
      await client().completions(request);
      final body = bodies.single;
      expect(body['session_id'], 'session-1');
      final system = (messagesOf(body)[0] as Map)['content'] as List;
      expect((system.single as Map)['cache_control'], oneHour);
    });

    test('completionsStream', () async {
      await client().completionsStream(request).drain<void>();
      final body = bodies.single;
      expect(body['stream'], isTrue);
      expect(body['session_id'], 'session-1');
      final last = (messagesOf(body)[1] as Map)['content'] as List;
      expect((last.single as Map)['cache_control'], oneHour);
    });

    test('defaults send neither markers nor session_id', () async {
      await OpenRouter(
        apiKey: 'sk-or-test',
        baseUrl: 'http://127.0.0.1:${server.port}/api/v1',
      ).completionsStream(request).drain<void>();
      final body = bodies.single;
      expect(body.containsKey('session_id'), isFalse);
      expect(jsonEncode(body), isNot(contains('cache_control')));
    });
  });
}
