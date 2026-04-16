import 'package:ai_box/ai_box.dart';
import 'package:claude_box/src/claude_core.dart';
import 'package:claude_box/src/freezed/message/request/message_request/message_request.dart';
import 'package:claude_box/src/freezed/message/response/message_response.dart';
import 'package:claude_box/src/freezed/models/list_models_response/list_models_response.dart';
import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:claude_box/src/freezed/models/request_header/request_header.dart';

class Claude extends LLMAIBase {
  Claude({required super.apiKey});

  /// Claude API は max_tokens が必須のため、未指定時に使うデフォルト値。
  static const int defaultMaxTokens = 8000;

  RequestHeader get requestHeader =>
      RequestHeader(apiKey: apiKey, anthropicVersion: '2023-06-01');

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    // Claude では system ロールのメッセージを system フィールドに分離する
    final systemMessages = request.messages
        .where((e) => e.role == LLMRole.system)
        .map((e) => e.content)
        .join('\n');
    final userMessages = request.messages
        .where((e) => e.role != LLMRole.system)
        .toList();

    final messageResponse = await createMessage(
      messageRequest: MessageRequest(
        model: request.model,
        messages: userMessages
            .map(
              (e) => MessageContent(
                role: e.role == LLMRole.model ? 'assistant' : 'user',
                content: e.content,
              ),
            )
            .toList(),
        maxTokens: request.maxTokens ?? defaultMaxTokens,
        system: systemMessages.isNotEmpty ? systemMessages : null,
        temperature: request.temperature,
        topP: request.topP,
        stopSequences: request.stop,
      ),
    );
    return LLMCompletionResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: messageResponse.content.first.text,
      ),
      inputTokens: messageResponse.usage.inputTokens,
      outputTokens: messageResponse.usage.outputTokens,
      finishReason: messageResponse.stopReason,
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
          maxTokens: maxTokens ?? defaultMaxTokens,
        ),
      );
      return messageResponse.content.first.text;
    } on Exception catch (_) {
      return null;
    }
  }

  Future<ModelInfo> getAModel({required String modelId}) async {
    return ClaudeCore.getAModel(requestHeader: requestHeader, modelId: modelId);
  }

  @override
  Future<List<AIModel>> getModels() async {
    final response = await listModels();
    return response.data
        .map(
          (e) => AIModel(
            id: e.id,
            name: e.displayName,
            created: DateTime.tryParse(e.createdAt),
          ),
        )
        .toList();
  }

  Future<ListModelsResponse> listModels() async {
    return ClaudeCore.listModels(requestHeader: requestHeader);
  }

  @override
  Future<bool> validateKey() {
    return listModels().then((value) => value.data.isNotEmpty);
  }
}
