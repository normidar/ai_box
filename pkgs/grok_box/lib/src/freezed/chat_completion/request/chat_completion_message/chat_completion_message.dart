import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_message.freezed.dart';
part 'chat_completion_message.g.dart';

@freezed
abstract class ChatCompletionMessage with _$ChatCompletionMessage {
  factory ChatCompletionMessage({
    required ChatCompletionRole role,
    required String content,
    String? name,
    @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls,
  }) = _ChatCompletionMessage;

  factory ChatCompletionMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionMessageFromJson(json);
  const ChatCompletionMessage._();
}

enum ChatCompletionRole { system, user, assistant, tool, function }
