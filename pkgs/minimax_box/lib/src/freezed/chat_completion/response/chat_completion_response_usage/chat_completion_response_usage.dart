import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response_usage.freezed.dart';
part 'chat_completion_response_usage.g.dart';

@freezed
abstract class ChatCompletionResponseUsage with _$ChatCompletionResponseUsage {
  factory ChatCompletionResponseUsage({
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
  }) = _ChatCompletionResponseUsage;

  factory ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageFromJson(json);
  const ChatCompletionResponseUsage._();
}
