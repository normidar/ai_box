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
    );

Map<String, dynamic> _$ChatCompletionResponseUsageToJson(
        _ChatCompletionResponseUsage instance) =>
    <String, dynamic>{
      'completion_tokens': instance.completionTokens,
      'prompt_tokens': instance.promptTokens,
      'total_tokens': instance.totalTokens,
    };
