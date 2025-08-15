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
      completionTokensDetails: json['completion_tokens_details'] == null
          ? null
          : ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
              json['completion_tokens_details'] as Map<String, dynamic>),
      numberSearches: (json['number_searches'] as num?)?.toInt(),
      promptTokensDetails: json['prompt_tokens_details'] == null
          ? null
          : ChatCompletionResponseUsagePromptTokensDetails.fromJson(
              json['prompt_tokens_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionResponseUsageToJson(
        _ChatCompletionResponseUsage instance) =>
    <String, dynamic>{
      'completion_tokens': instance.completionTokens,
      'prompt_tokens': instance.promptTokens,
      'total_tokens': instance.totalTokens,
      'completion_tokens_details': instance.completionTokensDetails,
      'number_searches': instance.numberSearches,
      'prompt_tokens_details': instance.promptTokensDetails,
    };

_ChatCompletionResponseUsageCompletionTokensDetails
    _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(
            Map<String, dynamic> json) =>
        _ChatCompletionResponseUsageCompletionTokensDetails(
          acceptedPredictionTokens:
              (json['accepted_prediction_tokens'] as num).toInt(),
          audioTokens: (json['audio_tokens'] as num).toInt(),
          reasoningTokens: (json['reasoning_tokens'] as num).toInt(),
          rejectedPredictionTokens:
              (json['rejected_prediction_tokens'] as num).toInt(),
        );

Map<String, dynamic> _$ChatCompletionResponseUsageCompletionTokensDetailsToJson(
        _ChatCompletionResponseUsageCompletionTokensDetails instance) =>
    <String, dynamic>{
      'accepted_prediction_tokens': instance.acceptedPredictionTokens,
      'audio_tokens': instance.audioTokens,
      'reasoning_tokens': instance.reasoningTokens,
      'rejected_prediction_tokens': instance.rejectedPredictionTokens,
    };

_ChatCompletionResponseUsagePromptTokensDetails
    _$ChatCompletionResponseUsagePromptTokensDetailsFromJson(
            Map<String, dynamic> json) =>
        _ChatCompletionResponseUsagePromptTokensDetails(
          audioTokens: (json['audio_tokens'] as num).toInt(),
          cachedTokens: (json['cached_tokens'] as num).toInt(),
          imageTokens: (json['image_tokens'] as num).toInt(),
          textTokens: (json['text_tokens'] as num).toInt(),
        );

Map<String, dynamic> _$ChatCompletionResponseUsagePromptTokensDetailsToJson(
        _ChatCompletionResponseUsagePromptTokensDetails instance) =>
    <String, dynamic>{
      'audio_tokens': instance.audioTokens,
      'cached_tokens': instance.cachedTokens,
      'image_tokens': instance.imageTokens,
      'text_tokens': instance.textTokens,
    };
