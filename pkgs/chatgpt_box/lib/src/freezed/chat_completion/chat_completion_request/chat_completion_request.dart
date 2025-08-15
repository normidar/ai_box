import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request_message/chat_completion_request_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

/// https://platform.openai.com/docs/api-reference/chat/create
@freezed
abstract class ChatCompletionRequest with _$ChatCompletionRequest {
  factory ChatCompletionRequest({
    required String model,
    required List<ChatCompletionRequestMessage> messages,
    @JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens,
    int? seed,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
  const ChatCompletionRequest._();
}
