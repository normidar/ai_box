import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response_usage.freezed.dart';
part 'chat_completion_response_usage.g.dart';

@freezed
abstract class ChatCompletionResponseUsage with _$ChatCompletionResponseUsage {
  factory ChatCompletionResponseUsage({
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
    @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
    @JsonKey(name: 'prompt_cache_miss_tokens') int? promptCacheMissTokens,
    @JsonKey(name: 'completion_tokens_details')
    ChatCompletionResponseUsageCompletionTokensDetails? completionTokensDetails,
  }) = _ChatCompletionResponseUsage;

  factory ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageFromJson(json);
  const ChatCompletionResponseUsage._();
}

@freezed
abstract class ChatCompletionResponseUsageCompletionTokensDetails
    with _$ChatCompletionResponseUsageCompletionTokensDetails {
  factory ChatCompletionResponseUsageCompletionTokensDetails({
    @JsonKey(name: 'reasoning_tokens') required int reasoningTokens,
  }) = _ChatCompletionResponseUsageCompletionTokensDetails;

  factory ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(json);
  const ChatCompletionResponseUsageCompletionTokensDetails._();
}
