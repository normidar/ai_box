import 'package:ai_box/src/ai_base.dart';

abstract class LLMAIBase extends AIBase implements LLMAIInterface {
  const LLMAIBase({required super.apiKey});

  @override
  Future<LLMResponse> chat(
      {required String model,
      required List<LLMContent> messages,
      int? maxTokens});

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

  Future<List<String>> getModelIds();

  Future<bool> validateKey();
}

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

enum LLMRole { model, user }
