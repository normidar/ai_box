import 'package:ai_box/src/ai_base.dart';

abstract class LLMAIBase extends AIBase implements LLMAIInterface {
  const LLMAIBase({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  /// [completions] の簡易ラッパー。
  Future<LLMCompletionResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
  }) {
    return completions(
      LLMCompletionRequest(
        model: model,
        messages: messages,
        maxTokens: maxTokens,
      ),
    );
  }

  /// ユーザーとモデルが交互に発言する会話を文字列リストで渡す簡易ラッパー。
  Future<String> chatWithStrings({
    required String model,
    required List<String> messages,
    int? maxTokens,
  }) {
    var nowAuthor = LLMRole.user;
    final nowMessages = <LLMContent>[];

    for (final message in messages) {
      nowMessages.add(LLMContent(role: nowAuthor, content: message));
      nowAuthor = nowAuthor == LLMRole.user ? LLMRole.model : LLMRole.user;
    }

    return chat(
      model: model,
      messages: nowMessages,
      maxTokens: maxTokens,
    ).then((value) => value.content.content);
  }

  /// 単一メッセージを送って返答文字列を得る最小ラッパー。
  Future<String> generateText({
    required String model,
    required String message,
    int? maxTokens,
  }) {
    return chatWithStrings(
      model: model,
      messages: [message],
      maxTokens: maxTokens,
    );
  }
}

/// ai_box の LLM プロバイダーが実装すべき最小インターフェース。
/// 便利メソッド (chat / chatWithStrings / generateText) は
/// [LLMAIBase] の具象実装を使うこと。
abstract class LLMAIInterface {
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  Future<List<AIModel>> getModels();

  Future<List<String>> getModelIds();

  Future<bool> validateKey();
}

/// OpenRouter互換のチャットリクエスト
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
  });

  final String model;
  final List<LLMContent> messages;

  /// 生成のランダム性 (0.0〜2.0)
  final double? temperature;

  /// nucleus sampling (0.0〜1.0)
  final double? topP;

  /// 最大出力トークン数
  final int? maxTokens;

  /// 生成を停止する文字列のリスト
  final List<String>? stop;

  /// 再現性のためのシード値
  final int? seed;

  /// 繰り返しを減らすペナルティ (-2.0〜2.0)
  final double? frequencyPenalty;

  /// 新しいトピックを促すペナルティ (-2.0〜2.0)
  final double? presencePenalty;

  /// 出力フォーマット
  final LLMResponseFormat? responseFormat;
}

/// OpenRouter互換のチャットレスポンス
class LLMCompletionResponse {
  const LLMCompletionResponse({
    required this.content,
    required this.inputTokens,
    required this.outputTokens,
    this.finishReason,
  });

  final LLMContent content;
  final int inputTokens;
  final int outputTokens;

  /// 生成が終了した理由 (stop / length / tool_calls など)
  final String? finishReason;
}

/// 出力フォーマット
class LLMResponseFormat {
  const LLMResponseFormat({required this.type});

  final LLMResponseFormatType type;

  static const text = LLMResponseFormat(type: LLMResponseFormatType.text);
  static const jsonObject =
      LLMResponseFormat(type: LLMResponseFormatType.jsonObject);
}

enum LLMResponseFormatType {
  text,
  jsonObject;

  /// OpenAI / Grok API に渡す snake_case 文字列に変換する。
  String toApiString() => switch (this) {
        LLMResponseFormatType.text => 'text',
        LLMResponseFormatType.jsonObject => 'json_object',
      };
}

class LLMContent {
  const LLMContent({required this.role, required this.content, this.parts});

  final LLMRole role;

  /// テキストのみのレスポンスはこのフィールドに入る。
  /// マルチモーダルの場合はテキストパートを連結した文字列になる。
  final String content;

  /// 画像などを含むマルチモーダルレスポンスのとき設定される。
  /// テキストのみの場合は null。
  final List<LLMContentPart>? parts;

  bool get hasImages => parts?.any((p) => p is LLMImagePart) ?? false;
  List<LLMImagePart> get images =>
      parts?.whereType<LLMImagePart>().toList() ?? [];

  bool get hasToolCalls => parts?.any((p) => p is LLMToolCallPart) ?? false;
  List<LLMToolCallPart> get toolCalls =>
      parts?.whereType<LLMToolCallPart>().toList() ?? [];

  bool get hasAudio => parts?.any((p) => p is LLMAudioPart) ?? false;
  List<LLMAudioPart> get audioList =>
      parts?.whereType<LLMAudioPart>().toList() ?? [];
}

/// チャットメッセージの1パーツを表す sealed クラス。
sealed class LLMContentPart {}

/// テキストパーツ。
class LLMTextPart extends LLMContentPart {
  LLMTextPart(this.text);

  final String text;
}

/// 画像パーツ。[url] は通常の https URL か data:image/...;base64,... 形式。
class LLMImagePart extends LLMContentPart {
  LLMImagePart(this.url);

  final String url;
}

/// ツール呼び出しパーツ。モデルが関数を呼び出す際に返される。
class LLMToolCallPart extends LLMContentPart {
  LLMToolCallPart({
    required this.id,
    required this.name,
    required this.arguments,
  });

  final String id;
  final String name;

  /// 関数に渡す引数。OpenAI 系は JSON 文字列をパース済み。
  final Map<String, dynamic> arguments;
}

/// 音声パーツ。[data] は base64 エンコード済み音声データ。
class LLMAudioPart extends LLMContentPart {
  LLMAudioPart({required this.data, this.transcript, this.mimeType});

  final String data;

  /// 音声のテキスト書き起こし（利用可能な場合のみ）。
  final String? transcript;

  /// audio/mp3、audio/wav など（Gemini の inlineData 由来の場合のみ）。
  final String? mimeType;
}

/// コード実行パーツ（Gemini のみ）。モデルが実行を要求したコード。
class LLMCodeExecutionPart extends LLMContentPart {
  LLMCodeExecutionPart({required this.code, required this.language});

  final String code;
  final String language;
}

/// コード実行結果パーツ（Gemini のみ）。
class LLMCodeExecutionResultPart extends LLMContentPart {
  LLMCodeExecutionResultPart({required this.outcome, this.output});

  /// 実行結果: ok / failed / deadline_exceeded
  final String outcome;
  final String? output;
}

enum LLMRole { model, user, system }
