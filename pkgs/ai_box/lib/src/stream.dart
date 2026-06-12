import 'package:ai_box/src/content.dart';
import 'package:ai_box/src/response.dart';

/// ストリーミング応答の 1 チャンク。
///
/// 途中のチャンクは [delta]（本文テキストの増分）や [reasoningDelta]
/// （thinking テキストの増分）を運び、最終チャンクは [finishReason] と
/// [parts]（確定した全パーツ）・[usage] を運ぶ。
class LLMStreamChunk {
  const LLMStreamChunk({
    this.delta = '',
    this.reasoningDelta = '',
    this.parts,
    this.finishReason,
    this.usage,
  });

  /// 直前からの増分テキスト。
  final String delta;

  /// 直前からの推論（thinking / reasoning）テキストの増分。
  final String reasoningDelta;

  /// 確定したパーツ（完了時などに付与される）。
  ///
  /// 最終チャンクには応答全体のパーツ（推論・全文テキスト・ツール呼び出し
  /// など）が入るため、最終チャンクだけで完全な応答を復元できる。
  final List<LLMContentPart>? parts;

  /// 完了理由（最終チャンクのみ）。
  final LLMFinishReason? finishReason;

  /// トークン使用量（取得できた場合、通常は最終チャンク）。
  final LLMUsage? usage;

  /// このチャンクで生成が完了したか。
  bool get isDone => finishReason != null;
}
