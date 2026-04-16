// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionRequest _$ChatCompletionRequestFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionRequest(
  model: json['model'] as String,
  messages:
      (json['messages'] as List<dynamic>)
          .map(
            (e) => ChatCompletionRequestMessage.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  maxCompletionTokens: (json['max_completion_tokens'] as num?)?.toInt(),
  temperature: (json['temperature'] as num?)?.toDouble(),
  topP: (json['top_p'] as num?)?.toDouble(),
  stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
  seed: (json['seed'] as num?)?.toInt(),
  frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
  presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
  responseFormat: json['response_format'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ChatCompletionRequestToJson(
  _ChatCompletionRequest instance,
) => <String, dynamic>{
  'model': instance.model,
  'messages': instance.messages,
  'max_completion_tokens': instance.maxCompletionTokens,
  'temperature': instance.temperature,
  'top_p': instance.topP,
  'stop': instance.stop,
  'seed': instance.seed,
  'frequency_penalty': instance.frequencyPenalty,
  'presence_penalty': instance.presencePenalty,
  'response_format': instance.responseFormat,
};
