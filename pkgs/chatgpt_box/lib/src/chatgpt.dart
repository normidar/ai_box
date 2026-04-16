import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/src/core/chat_completions_core.dart';
import 'package:chatgpt_box/src/core/models_core.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request/chat_completion_request.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request_message/chat_completion_request_message.dart';

class ChatGPT extends LLMAIBase {
  ChatGPT({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final chatCompletion = await ChatCompletionsCore.createChatCompletion(
      apiKey: apiKey,
      request: ChatCompletionRequest(
        model: request.model,
        messages: request.messages
            .map(
              (e) => ChatCompletionRequestMessage(
                role: e.role == LLMRole.model ? 'assistant' : e.role.name,
                content: e.content,
              ),
            )
            .toList(),
        maxCompletionTokens: request.maxTokens,
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
        content: choice.message.content!,
      ),
      inputTokens: chatCompletion.usage.promptTokens,
      outputTokens: chatCompletion.usage.completionTokens,
      finishReason: choice.finishReason,
    );
  }

  @override
  Future<List<AIModel>> getModels() async {
    final models = await ModelsCore.listModels(apiKey: apiKey);
    return models.data
        .map(
          (e) => AIModel(
            id: e.id,
            created: DateTime.fromMillisecondsSinceEpoch(e.created * 1000),
          ),
        )
        .toList();
  }

  @override
  Future<bool> validateKey() {
    return ModelsCore.listModels(
      apiKey: apiKey,
    ).then((value) => value.data.isNotEmpty);
  }
}
