// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    _MessageResponse(
      id: json['id'] as String,
      type: json['type'] as String,
      role: json['role'] as String,
      content: (json['content'] as List<dynamic>)
          .map(
              (e) => MessageResponseContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String,
      stopReason: json['stop_reason'] as String,
      usage: MessageUsage.fromJson(json['usage'] as Map<String, dynamic>),
      stopSequence: json['stop_sequence'] as String?,
    );

Map<String, dynamic> _$MessageResponseToJson(_MessageResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'role': instance.role,
      'content': instance.content,
      'model': instance.model,
      'stop_reason': instance.stopReason,
      'usage': instance.usage,
      'stop_sequence': instance.stopSequence,
    };

_MessageResponseContent _$MessageResponseContentFromJson(
        Map<String, dynamic> json) =>
    _MessageResponseContent(
      type: json['type'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$MessageResponseContentToJson(
        _MessageResponseContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

_MessageUsage _$MessageUsageFromJson(Map<String, dynamic> json) =>
    _MessageUsage(
      inputTokens: (json['input_tokens'] as num).toInt(),
      outputTokens: (json['output_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$MessageUsageToJson(_MessageUsage instance) =>
    <String, dynamic>{
      'input_tokens': instance.inputTokens,
      'output_tokens': instance.outputTokens,
    };
