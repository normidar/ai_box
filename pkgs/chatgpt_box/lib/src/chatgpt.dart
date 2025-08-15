import 'package:box_ai_base/box_ai_base.dart';
import 'package:chatgpt_box/src/core/chat_completions_core.dart';
import 'package:chatgpt_box/src/core/models_core.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request/chat_completion_request.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request_message/chat_completion_request_message.dart';

class ChatGPT extends LLMAIBase {
  ChatGPT({required super.apiKey});

  @override
  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    int? seed,
  }) async {
    final chatCompletion = await ChatCompletionsCore.createChatCompletion(
      apiKey: apiKey,
      request: ChatCompletionRequest(
        model: model,
        maxCompletionTokens: maxTokens,
        seed: seed,
        messages:
            messages
                .map(
                  (e) => ChatCompletionRequestMessage(
                    role: e.role.name,
                    content: e.content,
                  ),
                )
                .toList(),
      ),
    );
    return LLMResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: chatCompletion.choices.first.message.content!,
      ),
      inputTokens: chatCompletion.usage.promptTokens,
      outputTokens: chatCompletion.usage.completionTokens,
    );
  }

  @override
  Future<List<String>> getModelIds() async {
    final models = await ModelsCore.listModels(apiKey: apiKey);
    return models.data.map((e) => e.id).toList();
  }

  @override
  Future<bool> validateKey() {
    return ModelsCore.listModels(
      apiKey: apiKey,
    ).then((value) => value.data.isNotEmpty);
  }
}
