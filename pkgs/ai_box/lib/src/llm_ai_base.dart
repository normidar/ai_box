import 'package:ai_box/src/ai_base.dart';

abstract class LLMAIBase extends AIBase implements LLMAIInterface {
  const LLMAIBase({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  @override
  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
  }) async {
    final response = await completions(
      LLMCompletionRequest(
        model: model,
        messages: messages,
        maxTokens: maxTokens,
      ),
    );
    return LLMResponse(
      content: response.content,
      inputTokens: response.inputTokens,
      outputTokens: response.outputTokens,
    );
  }

  @override
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

  @override
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

abstract class LLMAIInterface {
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
  });

  Future<String> chatWithStrings({
    required String model,
    required List<String> messages,
    int? maxTokens,
  });

  Future<String> generateText({
    required String model,
    required String message,
    int? maxTokens,
  });

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

enum LLMResponseFormatType { text, jsonObject }

class LLMContent {
  const LLMContent({required this.role, required this.content});

  final LLMRole role;
  final String content;
}

class LLMResponse {
  const LLMResponse({
    required this.content,
    required this.inputTokens,
    required this.outputTokens,
  });

  final LLMContent content;
  final int inputTokens;
  final int outputTokens;
}

enum LLMRole { model, user, system }
