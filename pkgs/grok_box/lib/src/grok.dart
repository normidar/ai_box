import 'package:ai_box/ai_box.dart';
import 'package:grok_box/grok_box.dart';

class Grok extends LLMAIBase {
  Grok({required super.apiKey});

  @override
  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    int? seed,
  }) async {
    final chatCompletion = await GrokCore.chatCompletion(
      apiKey: apiKey,
      request: ChatCompletionRequest(
        model: model,
        messages: messages
            .map(
              (e) => ChatCompletionMessage(
                role: e.role == LLMRole.user
                    ? ChatCompletionRole.user
                    : ChatCompletionRole.assistant,
                content: e.content,
              ),
            )
            .toList(),
        maxTokens: maxTokens,
        seed: seed,
      ),
    );
    return LLMResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: chatCompletion.choices.first.message.content ?? '',
      ),
      inputTokens: chatCompletion.usage?.promptTokens ?? 0,
      outputTokens: chatCompletion.usage?.completionTokens ?? 0,
    );
  }

  @override
  Future<List<String>> getModelIds() async {
    final modelList = await GrokCore.listModels(apiKey: apiKey);
    return modelList.data.map((e) => e.id).toList();
  }

  @override
  Future<bool> validateKey() async {
    final apiKeyInfo = await GrokCore.getApiKeyInfo(apiKey: apiKey);
    return !apiKeyInfo.teamBlocked &&
        !apiKeyInfo.apiKeyDisabled &&
        !apiKeyInfo.apiKeyBlocked;
  }
}
