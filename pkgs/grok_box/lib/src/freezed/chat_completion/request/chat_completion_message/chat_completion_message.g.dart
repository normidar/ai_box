// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionMessage _$ChatCompletionMessageFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionMessage(
      role: $enumDecode(_$ChatCompletionRoleEnumMap, json['role']),
      content: json['content'] as String,
      name: json['name'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$ChatCompletionMessageToJson(
        _ChatCompletionMessage instance) =>
    <String, dynamic>{
      'role': _$ChatCompletionRoleEnumMap[instance.role]!,
      'content': instance.content,
      'name': instance.name,
      'tool_calls': instance.toolCalls,
    };

const _$ChatCompletionRoleEnumMap = {
  ChatCompletionRole.system: 'system',
  ChatCompletionRole.user: 'user',
  ChatCompletionRole.assistant: 'assistant',
  ChatCompletionRole.tool: 'tool',
  ChatCompletionRole.function: 'function',
};
