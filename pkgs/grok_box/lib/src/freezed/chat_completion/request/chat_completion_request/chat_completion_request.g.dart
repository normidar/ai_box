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
      deferred: json['deferred'] as bool?,
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
      logitBias: json['logit_bias'] as Map<String, dynamic>?,
      logprobs: json['logprobs'] as bool?,
      maxCompletionTokens: (json['max_completion_tokens'] as num?)?.toInt(),
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      n: (json['n'] as num?)?.toInt(),
      parallelToolCalls: json['parallel_tool_calls'] as bool?,
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
      reasoningEffort: json['reasoning_effort'] as String?,
      responseFormat: json['response_format'] as Map<String, dynamic>?,
      searchParameters: json['search_parameters'] as Map<String, dynamic>?,
      seed: (json['seed'] as num?)?.toInt(),
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      stream: json['stream'] as bool?,
      streamOptions: json['stream_options'] as Map<String, dynamic>?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      toolChoice: json['tool_choice'],
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      topLogprobs: (json['top_logprobs'] as num?)?.toInt(),
      topP: (json['top_p'] as num?)?.toDouble(),
      user: json['user'] as String?,
      webSearchOptions: json['web_search_options'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ChatCompletionRequestToJson(
        _ChatCompletionRequest instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'model': instance.model,
      'deferred': instance.deferred,
      'frequency_penalty': instance.frequencyPenalty,
      'logit_bias': instance.logitBias,
      'logprobs': instance.logprobs,
      'max_completion_tokens': instance.maxCompletionTokens,
      'max_tokens': instance.maxTokens,
      'n': instance.n,
      'parallel_tool_calls': instance.parallelToolCalls,
      'presence_penalty': instance.presencePenalty,
      'reasoning_effort': instance.reasoningEffort,
      'response_format': instance.responseFormat,
      'search_parameters': instance.searchParameters,
      'seed': instance.seed,
      'stop': instance.stop,
      'stream': instance.stream,
      'stream_options': instance.streamOptions,
      'temperature': instance.temperature,
      'tool_choice': instance.toolChoice,
      'tools': instance.tools,
      'top_logprobs': instance.topLogprobs,
      'top_p': instance.topP,
      'user': instance.user,
      'web_search_options': instance.webSearchOptions,
    };
