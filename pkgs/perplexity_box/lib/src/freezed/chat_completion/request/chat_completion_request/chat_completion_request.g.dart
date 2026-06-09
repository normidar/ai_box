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
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
      responseFormat: json['response_format'] as Map<String, dynamic>?,
      seed: (json['seed'] as num?)?.toInt(),
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      stream: json['stream'] as bool?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      toolChoice: json['tool_choice'],
      logprobs: json['logprobs'] as bool?,
      topLogprobs: (json['top_logprobs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChatCompletionRequestToJson(
        _ChatCompletionRequest instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'model': instance.model,
      'frequency_penalty': instance.frequencyPenalty,
      'max_tokens': instance.maxTokens,
      'presence_penalty': instance.presencePenalty,
      'response_format': instance.responseFormat,
      'seed': instance.seed,
      'stop': instance.stop,
      'stream': instance.stream,
      'temperature': instance.temperature,
      'top_p': instance.topP,
      'tools': instance.tools,
      'tool_choice': instance.toolChoice,
      'logprobs': instance.logprobs,
      'top_logprobs': instance.topLogprobs,
    };
