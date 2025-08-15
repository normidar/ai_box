// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageContent _$MessageContentFromJson(Map<String, dynamic> json) =>
    _MessageContent(
      role: json['role'] as String,
      content: json['content'],
    );

Map<String, dynamic> _$MessageContentToJson(_MessageContent instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) =>
    _MessageRequest(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTokens: (json['max_tokens'] as num).toInt(),
      system: json['system'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      topK: (json['top_k'] as num?)?.toInt(),
      stopSequences: (json['stop_sequences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      stream: json['stream'] as bool?,
    );

Map<String, dynamic> _$MessageRequestToJson(_MessageRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
      'max_tokens': instance.maxTokens,
      if (instance.system case final value?) 'system': value,
      if (instance.temperature case final value?) 'temperature': value,
      if (instance.topP case final value?) 'top_p': value,
      if (instance.topK case final value?) 'top_k': value,
      if (instance.stopSequences case final value?) 'stop_sequences': value,
      if (instance.stream case final value?) 'stream': value,
    };
