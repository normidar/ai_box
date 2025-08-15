import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_object_usage.freezed.dart';
part 'chat_completion_object_usage.g.dart';

/// https://platform.openai.com/docs/api-reference/chat/object#chat/object-usage
@freezed
abstract class ChatCompletionObjectUsage with _$ChatCompletionObjectUsage {
  factory ChatCompletionObjectUsage({
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
    @JsonKey(name: 'completion_tokens_details')
    required ChatCompletionObjectUsageCompletionTokensDetails
    completionTokensDetails,
    @JsonKey(name: 'prompt_tokens_details')
    required ChatCompletionObjectUsagePromptTokensDetails promptTokensDetails,
  }) = _ChatCompletionObjectUsage;

  factory ChatCompletionObjectUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionObjectUsageFromJson(json);
  const ChatCompletionObjectUsage._();
}

@freezed
abstract class ChatCompletionObjectUsageCompletionTokensDetails
    with _$ChatCompletionObjectUsageCompletionTokensDetails {
  factory ChatCompletionObjectUsageCompletionTokensDetails({
    @JsonKey(name: 'accepted_prediction_tokens')
    required int acceptedPredictionTokens,
    @JsonKey(name: 'audio_tokens') required int audioTokens,
    @JsonKey(name: 'reasoning_tokens') required int reasoningTokens,
    @JsonKey(name: 'rejected_prediction_tokens')
    required int rejectedPredictionTokens,
  }) = _ChatCompletionObjectUsageCompletionTokensDetails;

  factory ChatCompletionObjectUsageCompletionTokensDetails.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatCompletionObjectUsageCompletionTokensDetailsFromJson(json);
  const ChatCompletionObjectUsageCompletionTokensDetails._();
}

@freezed
abstract class ChatCompletionObjectUsagePromptTokensDetails
    with _$ChatCompletionObjectUsagePromptTokensDetails {
  factory ChatCompletionObjectUsagePromptTokensDetails({
    @JsonKey(name: 'audio_tokens') required int audioTokens,
    @JsonKey(name: 'cached_tokens') required int cachedTokens,
  }) = _ChatCompletionObjectUsagePromptTokensDetails;

  factory ChatCompletionObjectUsagePromptTokensDetails.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatCompletionObjectUsagePromptTokensDetailsFromJson(json);
  const ChatCompletionObjectUsagePromptTokensDetails._();
}
