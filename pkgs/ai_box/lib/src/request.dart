import 'package:ai_box/src/content.dart';

/// LLM へのチャット補完リクエスト。
class LLMCompletionRequest {
  const LLMCompletionRequest({
    required this.model,
    required this.messages,
    this.temperature,
    this.topP,
    this.maxTokens,
    this.stop,
    this.seed,
    this.frequencyPenalty,
    this.presencePenalty,
    this.responseFormat,
    this.tools,
    this.toolChoice,
  });

  /// モデル ID。
  final String model;

  /// 会話メッセージ。画像・音声・ファイル・ツール結果を含められる。
  final List<LLMContent> messages;

  /// 生成のランダム性 (0.0〜2.0)。
  final double? temperature;

  /// nucleus sampling (0.0〜1.0)。
  final double? topP;

  /// 最大出力トークン数。
  final int? maxTokens;

  /// 生成を停止する文字列のリスト。
  final List<String>? stop;

  /// 再現性のためのシード値。
  final int? seed;

  /// 繰り返しを減らすペナルティ (-2.0〜2.0)。
  final double? frequencyPenalty;

  /// 新しいトピックを促すペナルティ (-2.0〜2.0)。
  final double? presencePenalty;

  /// 出力フォーマット（text / json_object / json_schema）。
  final LLMResponseFormat? responseFormat;

  /// モデルが呼び出せるツール（関数）定義。
  final List<LLMTool>? tools;

  /// ツール選択の制御。
  final LLMToolChoice? toolChoice;

  /// 一部のフィールドを差し替えたコピーを返す。
  LLMCompletionRequest copyWith({
    String? model,
    List<LLMContent>? messages,
    double? temperature,
    double? topP,
    int? maxTokens,
    List<String>? stop,
    int? seed,
    double? frequencyPenalty,
    double? presencePenalty,
    LLMResponseFormat? responseFormat,
    List<LLMTool>? tools,
    LLMToolChoice? toolChoice,
  }) {
    return LLMCompletionRequest(
      model: model ?? this.model,
      messages: messages ?? this.messages,
      temperature: temperature ?? this.temperature,
      topP: topP ?? this.topP,
      maxTokens: maxTokens ?? this.maxTokens,
      stop: stop ?? this.stop,
      seed: seed ?? this.seed,
      frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
      presencePenalty: presencePenalty ?? this.presencePenalty,
      responseFormat: responseFormat ?? this.responseFormat,
      tools: tools ?? this.tools,
      toolChoice: toolChoice ?? this.toolChoice,
    );
  }
}

/// モデルに渡すツール（関数）定義。
class LLMTool {
  const LLMTool({
    required this.name,
    required this.description,
    required this.parameters,
  });

  /// 関数名。
  final String name;

  /// 関数の説明。
  final String description;

  /// JSON Schema 形式のパラメータ定義。
  final Map<String, dynamic> parameters;
}

/// ツール選択モード。
enum LLMToolChoiceMode {
  /// モデルが自動で判断する。
  auto,

  /// ツールを使わない。
  none,

  /// 必ずいずれかのツールを使う。
  any,
}

/// ツール選択の制御。
class LLMToolChoice {
  const LLMToolChoice({this.mode = LLMToolChoiceMode.auto, this.toolName});

  /// 特定のツールを強制する。
  factory LLMToolChoice.tool(String name) =>
      LLMToolChoice(mode: LLMToolChoiceMode.any, toolName: name);

  /// モデルが自動で判断する。
  static const auto = LLMToolChoice();

  /// ツールを使わない。
  static const none = LLMToolChoice(mode: LLMToolChoiceMode.none);

  /// 必ずいずれかのツールを使う。
  static const any = LLMToolChoice(mode: LLMToolChoiceMode.any);

  final LLMToolChoiceMode mode;

  /// [LLMToolChoice.tool] で指定された強制ツール名。
  final String? toolName;
}

/// 出力フォーマットの種別。
enum LLMResponseFormatType { text, jsonObject, jsonSchema }

/// 出力フォーマット。
class LLMResponseFormat {
  const LLMResponseFormat._(
    this.type, {
    this.schema,
    this.schemaName,
    this.strict = true,
  });

  /// JSON Schema による構造化出力。
  factory LLMResponseFormat.jsonSchema({
    required Map<String, dynamic> schema,
    String schemaName = 'response',
    bool strict = true,
  }) =>
      LLMResponseFormat._(
        LLMResponseFormatType.jsonSchema,
        schema: schema,
        schemaName: schemaName,
        strict: strict,
      );

  /// 通常のテキスト出力。
  static const text = LLMResponseFormat._(LLMResponseFormatType.text);

  /// 任意の JSON オブジェクト出力。
  static const jsonObject =
      LLMResponseFormat._(LLMResponseFormatType.jsonObject);

  final LLMResponseFormatType type;

  /// JSON Schema（[LLMResponseFormatType.jsonSchema] のとき）。
  final Map<String, dynamic>? schema;

  /// スキーマ名。
  final String? schemaName;

  /// 厳密モード（OpenAI structured outputs）。
  final bool strict;
}
