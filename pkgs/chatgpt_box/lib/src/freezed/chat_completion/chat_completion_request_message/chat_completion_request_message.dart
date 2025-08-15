import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_request_message.freezed.dart';
part 'chat_completion_request_message.g.dart';

@freezed
abstract class ChatCompletionRequestMessage
    with _$ChatCompletionRequestMessage {
  factory ChatCompletionRequestMessage({
    required String role,
    required String content,
    String? name,
    String? refusal,
    @JsonKey(name: 'tool_call_id') String? toolCallId,
  }) = _ChatCompletionRequestMessage;

  factory ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestMessageFromJson(json);
  const ChatCompletionRequestMessage._();
}
