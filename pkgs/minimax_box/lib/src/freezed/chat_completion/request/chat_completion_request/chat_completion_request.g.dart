// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionRequest _$ChatCompletionRequestFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionRequest(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatCompletionMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String,
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      seed: (json['seed'] as num?)?.toInt(),
      stream: json['stream'] as bool?,
      responseFormat: json['response_format'] as Map<String, dynamic>?,
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      toolChoice: json['tool_choice'],
      reasoningSplit: json['reasoning_split'] as bool?,
    );

Map<String, dynamic> _$ChatCompletionRequestToJson(
        _ChatCompletionRequest instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'model': instance.model,
      'max_tokens': instance.maxTokens,
      'temperature': instance.temperature,
      'top_p': instance.topP,
      'stop': instance.stop,
      'seed': instance.seed,
      'stream': instance.stream,
      'response_format': instance.responseFormat,
      'tools': instance.tools,
      'tool_choice': instance.toolChoice,
      'reasoning_split': instance.reasoningSplit,
    };
