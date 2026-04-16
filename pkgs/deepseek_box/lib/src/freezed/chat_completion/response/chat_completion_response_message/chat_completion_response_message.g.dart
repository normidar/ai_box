// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionResponseMessage _$ChatCompletionResponseMessageFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionResponseMessage(
      role: json['role'] as String,
      content: json['content'] as String?,
      reasoningContent: json['reasoning_content'] as String?,
      refusal: json['refusal'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$ChatCompletionResponseMessageToJson(
        _ChatCompletionResponseMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'reasoning_content': instance.reasoningContent,
      'refusal': instance.refusal,
      'tool_calls': instance.toolCalls,
    };
