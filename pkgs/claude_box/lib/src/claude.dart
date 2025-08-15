import 'package:ai_box/ai_box.dart';
import 'package:claude_box/src/claude_core.dart';
import 'package:claude_box/src/freezed/message/request/message_request/message_request.dart';
import 'package:claude_box/src/freezed/message/response/message_response.dart';
import 'package:claude_box/src/freezed/models/list_models_response/list_models_response.dart';
import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:claude_box/src/freezed/models/request_header/request_header.dart';

/// Claude do not support seed parameter yet
class Claude extends LLMAIBase {
  Claude({required super.apiKey});

  RequestHeader get requestHeader =>
      RequestHeader(apiKey: apiKey, anthropicVersion: '2023-06-01');

  @override
  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    int? seed,
  }) async {
    // Note: Claude API does not support seed parameter yet
    final messageResponse = await createMessage(
      messageRequest: MessageRequest(
        model: model,
        messages: messages
            .map(
              (e) => MessageContent(role: e.role.name, content: e.content),
            )
            .toList(),
        maxTokens: maxTokens ?? 8000,
      ),
    );
    return LLMResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: messageResponse.content.first.text,
      ),
      inputTokens: messageResponse.usage.inputTokens,
      outputTokens: messageResponse.usage.outputTokens,
    );
  }

  Future<MessageResponse> createMessage({
    required MessageRequest messageRequest,
  }) async {
    return ClaudeCore.createMessage(
      requestHeader: requestHeader,
      messageRequest: messageRequest,
    );
  }

  Future<String?> easyTalk({required String message, int? maxTokens}) async {
    try {
      final messageResponse = await createMessage(
        messageRequest: MessageRequest(
          model: 'claude-sonnet-4-20250514',
          messages: [MessageContent(role: 'user', content: message)],
          maxTokens: maxTokens ?? 5000, // 5000 tokens ~= 0.1 dollar
        ),
      );
      final content = messageResponse.content.first.text;
      return content;
    } on Exception catch (_) {
      return null;
    }
  }

  Future<ModelInfo> getAModel({required String modelId}) async {
    return ClaudeCore.getAModel(requestHeader: requestHeader, modelId: modelId);
  }

  @override
  Future<List<String>> getModelIds() {
    return listModels().then((value) => value.data.map((e) => e.id).toList());
  }

  Future<ListModelsResponse> listModels() async {
    return ClaudeCore.listModels(requestHeader: requestHeader);
  }

  @override
  Future<bool> validateKey() {
    return listModels().then((value) => value.data.isNotEmpty);
  }
}
