// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionRequestMessage _$ChatCompletionRequestMessageFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionRequestMessage(
  role: json['role'] as String,
  content: json['content'] as String,
  name: json['name'] as String?,
  refusal: json['refusal'] as String?,
  toolCallId: json['tool_call_id'] as String?,
);

Map<String, dynamic> _$ChatCompletionRequestMessageToJson(
  _ChatCompletionRequestMessage instance,
) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
  'name': instance.name,
  'refusal': instance.refusal,
  'tool_call_id': instance.toolCallId,
};
