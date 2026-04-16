import 'package:ai_box/ai_box.dart';
import 'package:grok_box/grok_box.dart';

class Grok extends LLMAIBase {
  Grok({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final chatCompletion = await GrokCore.chatCompletion(
      apiKey: apiKey,
      request: ChatCompletionRequest(
        model: request.model,
        messages: request.messages
            .map(
              (e) => ChatCompletionMessage(
                role: e.role == LLMRole.model
                    ? ChatCompletionRole.assistant
                    : e.role == LLMRole.system
                        ? ChatCompletionRole.system
                        : ChatCompletionRole.user,
                content: e.content,
              ),
            )
            .toList(),
        maxTokens: request.maxTokens,
        temperature: request.temperature,
        topP: request.topP,
        stop: request.stop,
        seed: request.seed,
        frequencyPenalty: request.frequencyPenalty,
        presencePenalty: request.presencePenalty,
        responseFormat: request.responseFormat != null
            ? {'type': request.responseFormat!.type.toApiString()}
            : null,
      ),
    );
    final choice = chatCompletion.choices.first;
    return LLMCompletionResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: choice.message.content ?? '',
      ),
      inputTokens: chatCompletion.usage?.promptTokens ?? 0,
      outputTokens: chatCompletion.usage?.completionTokens ?? 0,
      finishReason: choice.finishReason,
    );
  }

  @override
  Future<List<AIModel>> getModels() async {
    final modelList = await GrokCore.listModels(apiKey: apiKey);
    return modelList.data
        .map(
          (e) => AIModel(
            id: e.id,
            created: DateTime.fromMillisecondsSinceEpoch(e.created * 1000),
          ),
        )
        .toList();
  }

  @override
  Future<bool> validateKey() async {
    final apiKeyInfo = await GrokCore.getApiKeyInfo(apiKey: apiKey);
    return !apiKeyInfo.teamBlocked &&
        !apiKeyInfo.apiKeyDisabled &&
        !apiKeyInfo.apiKeyBlocked;
  }
}
