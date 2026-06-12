/// Gemini（`streamGenerateContent` + `alt=sse`）のストリーミング解析。
///
/// 各プロバイダーパッケージの内部実装向けで、アプリから直接使う想定ではない。
library;

import 'dart:convert';

import 'package:ai_box/ai_box.dart';

/// Gemini のストリーミングレスポンス（各イベントが
/// `GenerateContentResponse` 形の JSON）列を [LLMStreamChunk] 列へ変換する。
///
/// テキストは `delta`、thought パーツは `reasoningDelta` として増分で流れ、
/// 関数呼び出し・生成画像などは最終チャンクの `parts` に入る。
Stream<LLMStreamChunk> geminiChunksFromEvents(
  Stream<Map<String, dynamic>> events,
) async* {
  final text = StringBuffer();
  final reasoning = StringBuffer();
  final collected = <LLMContentPart>[];
  String? rawFinishReason;
  Map<String, dynamic>? usageMetadata;

  await for (final event in events) {
    final metadata = event['usageMetadata'];
    if (metadata is Map<String, dynamic>) usageMetadata = metadata;

    final candidates = event['candidates'];
    if (candidates is! List || candidates.isEmpty) continue;
    final candidate = candidates.first;
    if (candidate is! Map<String, dynamic>) continue;

    final finish = candidate['finishReason'];
    if (finish is String && finish.isNotEmpty) rawFinishReason = finish;

    final content = candidate['content'];
    final rawParts = content is Map<String, dynamic> ? content['parts'] : null;
    if (rawParts is! List) continue;
    for (final p in rawParts) {
      if (p is! Map<String, dynamic>) continue;
      if (p['thought'] == true) {
        final t = p['text'];
        if (t is String && t.isNotEmpty) {
          reasoning.write(t);
          yield LLMStreamChunk(reasoningDelta: t);
        }
        continue;
      }
      if (p['text'] is String) {
        final t = p['text'] as String;
        if (t.isNotEmpty) {
          text.write(t);
          yield LLMStreamChunk(delta: t);
        }
      } else if (p['inlineData'] is Map<String, dynamic>) {
        collected.add(
          geminiInlineDataToPart(p['inlineData'] as Map<String, dynamic>),
        );
      } else if (p['fileData'] is Map<String, dynamic>) {
        final fd = p['fileData'] as Map<String, dynamic>;
        collected.add(LLMImagePart.url((fd['fileUri'] ?? '').toString()));
      } else if (p['functionCall'] is Map<String, dynamic>) {
        final fc = p['functionCall'] as Map<String, dynamic>;
        collected.add(
          LLMToolCallPart(
            id: (fc['id'] ?? fc['name'] ?? '').toString(),
            name: (fc['name'] ?? '').toString(),
            arguments:
                (fc['args'] as Map<String, dynamic>?) ?? <String, dynamic>{},
          ),
        );
      } else if (p['executableCode'] is Map<String, dynamic>) {
        final ec = p['executableCode'] as Map<String, dynamic>;
        collected.add(
          LLMCodeExecutionPart(
            code: (ec['code'] ?? '').toString(),
            language: (ec['language'] ?? '').toString(),
          ),
        );
      } else if (p['codeExecutionResult'] is Map<String, dynamic>) {
        final cer = p['codeExecutionResult'] as Map<String, dynamic>;
        collected.add(
          LLMCodeExecutionResultPart(
            outcome: (cer['outcome'] ?? '').toString(),
            output: cer['output'] as String?,
          ),
        );
      }
    }
  }

  yield LLMStreamChunk(
    parts: [
      if (reasoning.isNotEmpty) LLMReasoningPart(reasoning.toString()),
      if (text.isNotEmpty) LLMTextPart(text.toString()),
      ...collected,
    ],
    finishReason: LLMFinishReason.parse(rawFinishReason),
    usage: usageMetadata == null ? null : _parseGeminiUsage(usageMetadata),
  );
}

/// Gemini の `inlineData`（base64）を MIME タイプに応じたパーツへ変換する。
LLMContentPart geminiInlineDataToPart(Map<String, dynamic> blob) {
  final mime = (blob['mimeType'] ?? '').toString();
  final b64 = (blob['data'] ?? '').toString();
  if (mime.startsWith('audio/')) {
    return LLMAudioPart.base64(b64, mimeType: mime);
  }
  if (mime.startsWith('image/')) {
    return LLMImagePart.bytes(base64Decode(b64), mimeType: mime);
  }
  return LLMFilePart.bytes(base64Decode(b64), mimeType: mime);
}

LLMUsage _parseGeminiUsage(Map<String, dynamic> usage) => LLMUsage(
      inputTokens: (usage['promptTokenCount'] as num?)?.toInt() ?? 0,
      outputTokens: (usage['candidatesTokenCount'] as num?)?.toInt() ?? 0,
      cachedInputTokens: (usage['cachedContentTokenCount'] as num?)?.toInt(),
      reasoningTokens: (usage['thoughtsTokenCount'] as num?)?.toInt(),
    );
