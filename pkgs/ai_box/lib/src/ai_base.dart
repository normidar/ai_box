/// すべての AI プロバイダーの基底クラス。
abstract class AIBase {
  const AIBase({required this.apiKey});

  final String apiKey;

  /// 利用可能なモデル一覧を取得する。
  Future<List<AIModel>> getModels();

  /// 利用可能なモデル ID 一覧を取得する。
  Future<List<String>> getModelIds() async =>
      (await getModels()).map((m) => m.id).toList();

  /// API キーが有効か検証する。
  Future<bool> validateKey();
}

/// 入出力のモダリティ。
enum LLMModality { text, image, audio, video, document }

/// モデル情報。
class AIModel {
  const AIModel({
    required this.id,
    this.name,
    this.created,
    this.description,
    this.contextLength,
    this.maxOutputTokens,
    this.inputModalities,
    this.outputModalities,
  });

  final String id;
  final String? name;
  final DateTime? created;
  final String? description;

  /// コンテキストウィンドウ（入力トークン上限）。
  final int? contextLength;

  /// 最大出力トークン数。
  final int? maxOutputTokens;

  /// 入力で対応するモダリティ（判明している場合）。
  final Set<LLMModality>? inputModalities;

  /// 出力で対応するモダリティ（判明している場合）。
  final Set<LLMModality>? outputModalities;

  @override
  String toString() {
    return 'AIModel(id: $id, name: $name, created: $created, '
        'description: $description, contextLength: $contextLength)';
  }
}
