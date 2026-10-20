import 'dart:typed_data';

import 'package:ai_box/src/ai_base.dart';

/// 埋め込みの用途（検索用に別々のベクトルを作るモデル向け。Gemini の
/// `taskType` など。対応しないプロバイダーは無視する）。
enum EmbeddingTask {
  /// 検索される側（保存する文書）。
  document,

  /// 検索する側（問い合わせ文）。
  query,
}

/// テキスト埋め込みのリクエスト。
class EmbeddingRequest {
  const EmbeddingRequest({
    required this.model,
    required this.inputs,
    this.dimensions,
    this.task,
  });

  /// 埋め込みモデル ID（[TextEmbedder.getEmbeddingModels] のもの）。
  final String model;

  /// 埋め込むテキスト（結果は同じ順で返る）。
  final List<String> inputs;

  /// 出力の次元数（短くできるモデルのみ。対応しないモデルではサービスが
  /// 拒否しうる）。null ならモデルの既定。
  final int? dimensions;

  /// 用途（対応するプロバイダーのみ）。
  final EmbeddingTask? task;
}

/// テキスト埋め込みの結果。
class EmbeddingResponse {
  const EmbeddingResponse({
    required this.vectors,
    this.inputTokens,
    this.costUsd,
  });

  /// 入力と同じ順のベクトル。
  final List<Float32List> vectors;

  /// 入力トークン数（報告するプロバイダーのみ）。
  final int? inputTokens;

  /// サービスが報告した費用（USD。OpenRouter など報告するプロバイダーのみ）。
  final double? costUsd;
}

/// テキスト埋め込みに対応するプロバイダー。
///
/// 実装するのは 1 回のリクエストで送る [embedBatch] と
/// [maxEmbeddingBatch]・[getEmbeddingModels]。[embed] は入力を
/// [maxEmbeddingBatch] 件ずつに分けて [embedBatch] を呼び、結果をまとめる。
mixin TextEmbedder on AIBase {
  /// 1 回のリクエストで送れる入力の最大件数。
  int get maxEmbeddingBatch;

  /// 1 回のリクエストで埋め込む（`inputs` は [maxEmbeddingBatch] 件以下）。
  Future<EmbeddingResponse> embedBatch(EmbeddingRequest request);

  /// 埋め込みに使えるモデルの一覧。
  Future<List<AIModel>> getEmbeddingModels();

  /// [inputCount] 件を埋め込むのに要るリクエスト回数。
  int requestCountFor(int inputCount) => inputCount <= 0
      ? 0
      : (inputCount + maxEmbeddingBatch - 1) ~/ maxEmbeddingBatch;

  /// 件数に関わらず埋め込む（必要なら分割して順に送る）。失敗時は
  /// `LLMException`（それまでのバッチの結果は返さない）。
  Future<EmbeddingResponse> embed(EmbeddingRequest request) async {
    final inputs = request.inputs;
    if (inputs.length <= maxEmbeddingBatch) return await embedBatch(request);
    final vectors = <Float32List>[];
    int? tokens;
    double? cost;
    for (var start = 0; start < inputs.length; start += maxEmbeddingBatch) {
      final end = start + maxEmbeddingBatch < inputs.length
          ? start + maxEmbeddingBatch
          : inputs.length;
      final res = await embedBatch(
        EmbeddingRequest(
          model: request.model,
          inputs: inputs.sublist(start, end),
          dimensions: request.dimensions,
          task: request.task,
        ),
      );
      vectors.addAll(res.vectors);
      if (res.inputTokens != null) tokens = (tokens ?? 0) + res.inputTokens!;
      if (res.costUsd != null) cost = (cost ?? 0) + res.costUsd!;
    }
    return EmbeddingResponse(
      vectors: vectors,
      inputTokens: tokens,
      costUsd: cost,
    );
  }
}
