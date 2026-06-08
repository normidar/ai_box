import 'package:ai_box/src/content.dart';
import 'package:ai_box/src/response.dart';

/// ストリーミング応答の 1 チャンク。
class LLMStreamChunk {
  const LLMStreamChunk({
    this.delta = '',
    this.parts,
    this.finishReason,
    this.usage,
  });

  /// 直前からの増分テキスト。
  final String delta;

  /// 確定したパーツ（完了時などに付与される）。
  final List<LLMContentPart>? parts;

  /// 完了理由（最終チャンクのみ）。
  final LLMFinishReason? finishReason;

  /// トークン使用量（取得できた場合、通常は最終チャンク）。
  final LLMUsage? usage;

  /// このチャンクで生成が完了したか。
  bool get isDone => finishReason != null;
}
