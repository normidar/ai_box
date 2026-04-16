// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionResponseUsage _$ChatCompletionResponseUsageFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionResponseUsage(
      completionTokens: (json['completion_tokens'] as num).toInt(),
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
      promptCacheHitTokens: (json['prompt_cache_hit_tokens'] as num?)?.toInt(),
      promptCacheMissTokens:
          (json['prompt_cache_miss_tokens'] as num?)?.toInt(),
      completionTokensDetails: json['completion_tokens_details'] == null
          ? null
          : ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
              json['completion_tokens_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionResponseUsageToJson(
        _ChatCompletionResponseUsage instance) =>
    <String, dynamic>{
      'completion_tokens': instance.completionTokens,
      'prompt_tokens': instance.promptTokens,
      'total_tokens': instance.totalTokens,
      'prompt_cache_hit_tokens': instance.promptCacheHitTokens,
      'prompt_cache_miss_tokens': instance.promptCacheMissTokens,
      'completion_tokens_details': instance.completionTokensDetails,
    };

_ChatCompletionResponseUsageCompletionTokensDetails
    _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(
            Map<String, dynamic> json) =>
        _ChatCompletionResponseUsageCompletionTokensDetails(
          reasoningTokens: (json['reasoning_tokens'] as num).toInt(),
        );

Map<String, dynamic> _$ChatCompletionResponseUsageCompletionTokensDetailsToJson(
        _ChatCompletionResponseUsageCompletionTokensDetails instance) =>
    <String, dynamic>{
      'reasoning_tokens': instance.reasoningTokens,
    };
