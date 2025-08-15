import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_object_choice_message/chat_completion_object_choice_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_object_choice.freezed.dart';
part 'chat_completion_object_choice.g.dart';

@freezed
abstract class ChatCompletionObjectChoice with _$ChatCompletionObjectChoice {
  factory ChatCompletionObjectChoice({
    required int index,
    @JsonKey(name: 'finish_reason') required String finishReason,
    required ChatCompletionObjectChoiceMessage message,
  }) = _ChatCompletionObjectChoice;

  factory ChatCompletionObjectChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionObjectChoiceFromJson(json);
  const ChatCompletionObjectChoice._();
}
