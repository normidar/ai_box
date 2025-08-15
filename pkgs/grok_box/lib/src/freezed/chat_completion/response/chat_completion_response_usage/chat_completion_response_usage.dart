import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response_usage.freezed.dart';
part 'chat_completion_response_usage.g.dart';

@freezed
abstract class ChatCompletionResponseUsage with _$ChatCompletionResponseUsage {
  factory ChatCompletionResponseUsage({
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
    @JsonKey(name: 'completion_tokens_details')
    ChatCompletionResponseUsageCompletionTokensDetails? completionTokensDetails,
    @JsonKey(name: 'number_searches') int? numberSearches,
    @JsonKey(name: 'prompt_tokens_details')
    ChatCompletionResponseUsagePromptTokensDetails? promptTokensDetails,
  }) = _ChatCompletionResponseUsage;

  factory ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageFromJson(json);
  const ChatCompletionResponseUsage._();
}

@freezed
abstract class ChatCompletionResponseUsageCompletionTokensDetails
    with _$ChatCompletionResponseUsageCompletionTokensDetails {
  factory ChatCompletionResponseUsageCompletionTokensDetails({
    @JsonKey(name: 'accepted_prediction_tokens')
    required int acceptedPredictionTokens,
    @JsonKey(name: 'audio_tokens') required int audioTokens,
    @JsonKey(name: 'reasoning_tokens') required int reasoningTokens,
    @JsonKey(name: 'rejected_prediction_tokens')
    required int rejectedPredictionTokens,
  }) = _ChatCompletionResponseUsageCompletionTokensDetails;

  factory ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(json);
  const ChatCompletionResponseUsageCompletionTokensDetails._();
}

@freezed
abstract class ChatCompletionResponseUsagePromptTokensDetails
    with _$ChatCompletionResponseUsagePromptTokensDetails {
  factory ChatCompletionResponseUsagePromptTokensDetails({
    @JsonKey(name: 'audio_tokens') required int audioTokens,
    @JsonKey(name: 'cached_tokens') required int cachedTokens,
    @JsonKey(name: 'image_tokens') required int imageTokens,
    @JsonKey(name: 'text_tokens') required int textTokens,
  }) = _ChatCompletionResponseUsagePromptTokensDetails;

  factory ChatCompletionResponseUsagePromptTokensDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChatCompletionResponseUsagePromptTokensDetailsFromJson(json);
  const ChatCompletionResponseUsagePromptTokensDetails._();
}
