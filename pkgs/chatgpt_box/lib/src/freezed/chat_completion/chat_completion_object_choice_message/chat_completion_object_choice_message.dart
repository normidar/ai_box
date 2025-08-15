import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_object_choice_message.freezed.dart';
part 'chat_completion_object_choice_message.g.dart';

@freezed
abstract class ChatCompletionObjectChoiceMessage
    with _$ChatCompletionObjectChoiceMessage {
  factory ChatCompletionObjectChoiceMessage({
    required String role,
    String? content,
    String? refusal,
  }) = _ChatCompletionObjectChoiceMessage;

  factory ChatCompletionObjectChoiceMessage.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatCompletionObjectChoiceMessageFromJson(json);
  const ChatCompletionObjectChoiceMessage._();
}
