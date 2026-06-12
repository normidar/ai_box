import 'package:ai_box/ai_box.dart';

/// OpenRouter `/models` が返す 1 モデルの情報。
///
/// OpenRouter は各モデルについて、コンテキスト長・対応モダリティ・価格などの
/// 豊富なメタデータを返す。ai_box 共通の [AIModel] には [toAIModel] で変換できる。
class OpenRouterModel {
  const OpenRouterModel({
    required this.id,
    required this.raw,
    this.name,
    this.canonicalSlug,
    this.created,
    this.description,
    this.contextLength,
    this.maxCompletionTokens,
    this.inputModalities,
    this.outputModalities,
    this.pricing,
    this.supportedParameters,
  });

  /// JSON（`data` 配列の 1 要素）から生成する。
  factory OpenRouterModel.fromJson(Map<String, dynamic> json) {
    final architecture = json['architecture'] as Map<String, dynamic>?;
    final topProvider = json['top_provider'] as Map<String, dynamic>?;
    final pricing = json['pricing'] as Map<String, dynamic>?;
    final createdRaw = json['created'];
    return OpenRouterModel(
      id: (json['id'] ?? '').toString(),
      name: json['name'] as String?,
      canonicalSlug: json['canonical_slug'] as String?,
      created:
          createdRaw is num
              ? DateTime.fromMillisecondsSinceEpoch(createdRaw.toInt() * 1000)
              : null,
      description: json['description'] as String?,
      contextLength: (json['context_length'] as num?)?.toInt(),
      maxCompletionTokens:
          (topProvider?['max_completion_tokens'] as num?)?.toInt(),
      inputModalities: _parseModalities(architecture?['input_modalities']),
      outputModalities: _parseModalities(architecture?['output_modalities']),
      pricing: pricing == null ? null : OpenRouterPricing.fromJson(pricing),
      supportedParameters:
          (json['supported_parameters'] as List?)
              ?.map((e) => e.toString())
              .toList(),
      raw: json,
    );
  }

  /// モデル ID（例: `openai/gpt-5.4-mini`）。
  final String id;

  /// 人間可読のモデル名。
  final String? name;

  /// 安定したスラッグ（バージョン込みの正規名）。
  final String? canonicalSlug;

  /// 作成日時。
  final DateTime? created;

  /// モデルの説明。
  final String? description;

  /// コンテキストウィンドウ（入力トークン上限）。
  final int? contextLength;

  /// 最大出力トークン数。
  final int? maxCompletionTokens;

  /// 入力で対応するモダリティ。
  final Set<LLMModality>? inputModalities;

  /// 出力で対応するモダリティ。
  final Set<LLMModality>? outputModalities;

  /// 価格情報（トークンあたりの USD）。
  final OpenRouterPricing? pricing;

  /// このモデルが受け付けるパラメータ名の一覧。
  final List<String>? supportedParameters;

  /// 元の JSON（取りこぼした項目にアクセスするため保持）。
  final Map<String, dynamic> raw;

  /// 無料モデル（プロンプト・補完ともに 0 USD）か。
  bool get isFree =>
      (pricing?.prompt ?? 0) == 0 && (pricing?.completion ?? 0) == 0;

  /// ai_box 共通の [AIModel] へ変換する。
  AIModel toAIModel() => AIModel(
    id: id,
    name: name,
    created: created,
    description: description,
    contextLength: contextLength,
    maxOutputTokens: maxCompletionTokens,
    inputModalities: inputModalities,
    outputModalities: outputModalities,
  );

  @override
  String toString() => 'OpenRouterModel(id: $id, name: $name)';

  static const _modalityNames = <String, LLMModality>{
    'text': LLMModality.text,
    'image': LLMModality.image,
    'audio': LLMModality.audio,
    'video': LLMModality.video,
    'file': LLMModality.document,
    'document': LLMModality.document,
  };

  static Set<LLMModality>? _parseModalities(Object? raw) {
    if (raw is! List) return null;
    final out = <LLMModality>{
      for (final m in raw)
        if (_modalityNames[m.toString()] != null) _modalityNames[m.toString()]!,
    };
    return out.isEmpty ? null : out;
  }
}

/// OpenRouter のモデル価格（USD/トークンなど）。
///
/// OpenRouter は価格を文字列で返すため、数値としても [prompt] / [completion]
/// などでアクセスできるよう解析しておく。元の文字列は [raw] に保持する。
class OpenRouterPricing {
  const OpenRouterPricing({
    required this.raw,
    this.prompt,
    this.completion,
    this.request,
    this.image,
  });

  factory OpenRouterPricing.fromJson(Map<String, dynamic> json) =>
      OpenRouterPricing(
        prompt: _toDouble(json['prompt']),
        completion: _toDouble(json['completion']),
        request: _toDouble(json['request']),
        image: _toDouble(json['image']),
        raw: json,
      );

  /// 入力トークンあたりの USD。
  final double? prompt;

  /// 出力トークンあたりの USD。
  final double? completion;

  /// リクエストあたりの USD。
  final double? request;

  /// 画像あたりの USD。
  final double? image;

  /// 元の価格 JSON（文字列値のまま）。
  final Map<String, dynamic> raw;

  static double? _toDouble(Object? v) {
    if (v == null) return null;
    if (v is num) return v.toDouble();
    return double.tryParse(v.toString());
  }
}
