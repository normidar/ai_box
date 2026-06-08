import 'package:ai_box/src/content.dart';

/// LLM からのチャット補完レスポンス。
class LLMCompletionResponse {
  const LLMCompletionResponse({
    required this.content,
    required this.usage,
    required this.finishReason,
    this.model,
    this.id,
  });

  /// 応答メッセージ（テキスト・画像・音声・ツール呼び出しなどを含む）。
  final LLMContent content;

  /// トークン使用量。
  final LLMUsage usage;

  /// 生成が終了した理由（正規化済み）。
  final LLMFinishReason finishReason;

  /// 実際に使われたモデル名（取得できた場合）。
  final String? model;

  /// レスポンス ID（取得できた場合）。
  final String? id;

  /// 応答本文のテキスト。
  String get text => content.text;

  /// ツール呼び出しの一覧（あれば）。
  List<LLMToolCallPart> get toolCalls => content.toolCalls;

  /// 入力トークン数（後方互換）。
  int get inputTokens => usage.inputTokens;

  /// 出力トークン数（後方互換）。
  int get outputTokens => usage.outputTokens;

  @override
  String toString() =>
      'LLMCompletionResponse(finishReason: $finishReason, usage: $usage, '
      'text: ${text.length} chars)';
}

/// トークン使用量。
class LLMUsage {
  const LLMUsage({
    required this.inputTokens,
    required this.outputTokens,
    this.cachedInputTokens,
    this.reasoningTokens,
  });

  /// 入力（プロンプト）トークン数。
  final int inputTokens;

  /// 出力（生成）トークン数。
  final int outputTokens;

  /// キャッシュから読まれた入力トークン数（対応プロバイダーのみ）。
  final int? cachedInputTokens;

  /// 推論（thinking）に使われたトークン数（対応プロバイダーのみ）。
  final int? reasoningTokens;

  /// 入力＋出力の合計。
  int get totalTokens => inputTokens + outputTokens;

  @override
  String toString() => 'LLMUsage(in: $inputTokens, out: $outputTokens)';
}

/// 生成が終了した理由を正規化した列挙。
///
/// 各プロバイダーの finish_reason / stop_reason 文字列を統一的に扱える。
enum LLMFinishReason {
  /// 自然に終了（stop / end_turn / STOP / stop_sequence）。
  stop,

  /// 最大トークン数に到達（length / max_tokens / MAX_TOKENS）。
  length,

  /// モデルがツール呼び出しを要求（tool_calls / tool_use / function_call）。
  toolCalls,

  /// セーフティ・コンテンツフィルタ（content_filter / SAFETY / RECITATION）。
  contentFilter,

  /// その他・不明。
  other;

  /// 各プロバイダーの finish_reason / stop_reason 文字列を正規化する。
  static LLMFinishReason parse(String? raw) {
    if (raw == null) return LLMFinishReason.other;
    final v = raw.toLowerCase();
    if (v.contains('tool') || v.contains('function')) {
      return LLMFinishReason.toolCalls;
    }
    if (v.contains('max') || v == 'length') {
      return LLMFinishReason.length;
    }
    if (v.contains('safety') ||
        v.contains('filter') ||
        v.contains('recitation') ||
        v.contains('block') ||
        v.contains('refus')) {
      return LLMFinishReason.contentFilter;
    }
    if (v.contains('stop') || v.contains('end') || v == 'complete') {
      return LLMFinishReason.stop;
    }
    return LLMFinishReason.other;
  }
}
