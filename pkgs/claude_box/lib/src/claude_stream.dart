/// Claude（Anthropic Messages API）の SSE ストリーミングイベント解析。
///
/// 各プロバイダーパッケージの内部実装向けで、アプリから直接使う想定ではない。
library;

import 'dart:convert';

import 'package:ai_box/ai_box.dart';

/// Claude のストリーミングイベント（`message_start` /
/// `content_block_delta` / `message_delta` など）列を [LLMStreamChunk] 列へ
/// 変換する。
///
/// テキストは `delta`、thinking は `reasoningDelta` として増分で流れ、
/// ツール呼び出し（`input_json_delta`）はイベントをまたいで組み立てられて
/// 最終チャンクの `parts` に入る。`error` イベントは [LLMException] に
/// 正規化して投げる。
Stream<LLMStreamChunk> claudeChunksFromEvents(
  Stream<Map<String, dynamic>> events,
) async* {
  final blocks = <int, _StreamBlock>{};
  LLMFinishReason? finishReason;
  int? inputTokens;
  int? outputTokens;
  int? cachedInputTokens;

  await for (final event in events) {
    switch (event['type']) {
      case 'message_start':
        final message = event['message'];
        final usage = message is Map<String, dynamic> ? message['usage'] : null;
        if (usage is Map<String, dynamic>) {
          inputTokens = (usage['input_tokens'] as num?)?.toInt();
          outputTokens = (usage['output_tokens'] as num?)?.toInt();
          cachedInputTokens =
              (usage['cache_read_input_tokens'] as num?)?.toInt();
        }
      case 'content_block_start':
        final index = (event['index'] as num?)?.toInt() ?? 0;
        final block = _StreamBlock.start(event['content_block']);
        blocks[index] = block;
        if (block.text.isNotEmpty) {
          yield LLMStreamChunk(delta: block.text.toString());
        }
      case 'content_block_delta':
        final index = (event['index'] as num?)?.toInt() ?? 0;
        final block = blocks.putIfAbsent(index, _StreamBlock.new);
        final delta = event['delta'];
        if (delta is! Map<String, dynamic>) continue;
        switch (delta['type']) {
          case 'text_delta':
            final text = delta['text'];
            if (text is String && text.isNotEmpty) {
              block.text.write(text);
              yield LLMStreamChunk(delta: text);
            }
          case 'thinking_delta':
            final thinking = delta['thinking'];
            if (thinking is String && thinking.isNotEmpty) {
              block.thinking.write(thinking);
              yield LLMStreamChunk(reasoningDelta: thinking);
            }
          case 'input_json_delta':
            final partial = delta['partial_json'];
            if (partial is String) block.inputJson.write(partial);
          case 'signature_delta':
            final signature = delta['signature'];
            if (signature is String) block.signature = signature;
        }
      case 'message_delta':
        final delta = event['delta'];
        if (delta is Map<String, dynamic>) {
          final stopReason = delta['stop_reason'];
          if (stopReason is String && stopReason.isNotEmpty) {
            finishReason = LLMFinishReason.parse(stopReason);
          }
        }
        final usage = event['usage'];
        if (usage is Map<String, dynamic>) {
          outputTokens =
              (usage['output_tokens'] as num?)?.toInt() ?? outputTokens;
        }
      case 'error':
        throw claudeStreamErrorToException(event['error'], raw: event);
    }
  }

  yield LLMStreamChunk(
    parts: [
      for (final index in blocks.keys.toList()..sort())
        ...blocks[index]!.toParts(),
    ],
    finishReason: finishReason ?? LLMFinishReason.other,
    usage: LLMUsage(
      inputTokens: inputTokens ?? 0,
      outputTokens: outputTokens ?? 0,
      cachedInputTokens: cachedInputTokens,
    ),
  );
}

/// Claude の `error` イベントを [LLMException] 階層へ正規化する。
LLMException claudeStreamErrorToException(Object? error, {Object? raw}) {
  final map = error is Map<String, dynamic> ? error : const <String, dynamic>{};
  final type = (map['type'] ?? '').toString();
  final message = (map['message'] ?? 'Stream error').toString();
  const provider = 'claude';
  return switch (type) {
    'authentication_error' ||
    'permission_error' =>
      LLMAuthException(message, provider: provider, code: type, raw: raw),
    'rate_limit_error' =>
      LLMRateLimitException(message, provider: provider, code: type, raw: raw),
    'invalid_request_error' ||
    'not_found_error' ||
    'request_too_large' =>
      LLMInvalidRequestException(
        message,
        provider: provider,
        code: type,
        raw: raw,
      ),
    'api_error' ||
    'overloaded_error' =>
      LLMServerException(message, provider: provider, code: type, raw: raw),
    _ => LLMUnknownException(message, provider: provider, code: type, raw: raw),
  };
}

/// ストリーミング中に組み立てる 1 コンテントブロック。
class _StreamBlock {
  _StreamBlock() : type = 'text';

  _StreamBlock.start(Object? contentBlock)
      : type = contentBlock is Map<String, dynamic>
            ? (contentBlock['type'] ?? 'text').toString()
            : 'text' {
    if (contentBlock is! Map<String, dynamic>) return;
    final initialText = contentBlock['text'];
    if (initialText is String) text.write(initialText);
    final initialThinking = contentBlock['thinking'];
    if (initialThinking is String) thinking.write(initialThinking);
    toolUseId = (contentBlock['id'] ?? '').toString();
    toolName = (contentBlock['name'] ?? '').toString();
  }

  final String type;
  final StringBuffer text = StringBuffer();
  final StringBuffer thinking = StringBuffer();
  final StringBuffer inputJson = StringBuffer();
  String toolUseId = '';
  String toolName = '';
  String? signature;

  List<LLMContentPart> toParts() {
    switch (type) {
      case 'tool_use':
        return [
          LLMToolCallPart(
            id: toolUseId,
            name: toolName,
            arguments: _decodeJsonMap(inputJson.toString()),
          ),
        ];
      case 'thinking':
        return [
          if (thinking.isNotEmpty)
            LLMReasoningPart(thinking.toString(), signature: signature),
        ];
      case 'text':
        return [if (text.isNotEmpty) LLMTextPart(text.toString())];
      default:
        return const [];
    }
  }
}

Map<String, dynamic> _decodeJsonMap(String source) {
  if (source.isEmpty) return <String, dynamic>{};
  try {
    final decoded = jsonDecode(source);
    if (decoded is Map<String, dynamic>) return decoded;
  } on FormatException {
    // 不完全な JSON は空マップとして扱う。
  }
  return <String, dynamic>{};
}
