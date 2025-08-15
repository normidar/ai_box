import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grok_box/src/freezed/chat_completion/response/chat_completion_response_message/chat_completion_response_message.dart';

part 'chat_completion_response_choice.freezed.dart';
part 'chat_completion_response_choice.g.dart';

@freezed
abstract class ChatCompletionResponseChoice
    with _$ChatCompletionResponseChoice {
  factory ChatCompletionResponseChoice({
    required int index,
    required ChatCompletionResponseMessage message,
    @JsonKey(name: 'finish_reason') String? finishReason,
    Map<String, dynamic>? logprobs,
  }) = _ChatCompletionResponseChoice;

  factory ChatCompletionResponseChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseChoiceFromJson(json);
  const ChatCompletionResponseChoice._();
}
