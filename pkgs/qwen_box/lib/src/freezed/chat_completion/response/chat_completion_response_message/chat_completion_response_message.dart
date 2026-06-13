import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response_message.freezed.dart';
part 'chat_completion_response_message.g.dart';

@freezed
abstract class ChatCompletionResponseMessage
    with _$ChatCompletionResponseMessage {
  factory ChatCompletionResponseMessage({
    required String role,
    String? content,
    @JsonKey(name: 'reasoning_content') String? reasoningContent,
    String? refusal,
    @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls,
  }) = _ChatCompletionResponseMessage;

  factory ChatCompletionResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseMessageFromJson(json);
  const ChatCompletionResponseMessage._();
}
