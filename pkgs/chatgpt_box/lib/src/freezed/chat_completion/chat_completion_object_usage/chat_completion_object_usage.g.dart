// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_object_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionObjectUsage _$ChatCompletionObjectUsageFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObjectUsage(
  completionTokens: (json['completion_tokens'] as num).toInt(),
  promptTokens: (json['prompt_tokens'] as num).toInt(),
  totalTokens: (json['total_tokens'] as num).toInt(),
  completionTokensDetails:
      ChatCompletionObjectUsageCompletionTokensDetails.fromJson(
        json['completion_tokens_details'] as Map<String, dynamic>,
      ),
  promptTokensDetails: ChatCompletionObjectUsagePromptTokensDetails.fromJson(
    json['prompt_tokens_details'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChatCompletionObjectUsageToJson(
  _ChatCompletionObjectUsage instance,
) => <String, dynamic>{
  'completion_tokens': instance.completionTokens,
  'prompt_tokens': instance.promptTokens,
  'total_tokens': instance.totalTokens,
  'completion_tokens_details': instance.completionTokensDetails,
  'prompt_tokens_details': instance.promptTokensDetails,
};

_ChatCompletionObjectUsageCompletionTokensDetails
_$ChatCompletionObjectUsageCompletionTokensDetailsFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObjectUsageCompletionTokensDetails(
  acceptedPredictionTokens: (json['accepted_prediction_tokens'] as num).toInt(),
  audioTokens: (json['audio_tokens'] as num).toInt(),
  reasoningTokens: (json['reasoning_tokens'] as num).toInt(),
  rejectedPredictionTokens: (json['rejected_prediction_tokens'] as num).toInt(),
);

Map<String, dynamic> _$ChatCompletionObjectUsageCompletionTokensDetailsToJson(
  _ChatCompletionObjectUsageCompletionTokensDetails instance,
) => <String, dynamic>{
  'accepted_prediction_tokens': instance.acceptedPredictionTokens,
  'audio_tokens': instance.audioTokens,
  'reasoning_tokens': instance.reasoningTokens,
  'rejected_prediction_tokens': instance.rejectedPredictionTokens,
};

_ChatCompletionObjectUsagePromptTokensDetails
_$ChatCompletionObjectUsagePromptTokensDetailsFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObjectUsagePromptTokensDetails(
  audioTokens: (json['audio_tokens'] as num).toInt(),
  cachedTokens: (json['cached_tokens'] as num).toInt(),
);

Map<String, dynamic> _$ChatCompletionObjectUsagePromptTokensDetailsToJson(
  _ChatCompletionObjectUsagePromptTokensDetails instance,
) => <String, dynamic>{
  'audio_tokens': instance.audioTokens,
  'cached_tokens': instance.cachedTokens,
};
