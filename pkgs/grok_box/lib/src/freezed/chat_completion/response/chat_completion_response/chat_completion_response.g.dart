// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionResponse _$ChatCompletionResponseFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionResponse(
      choices: (json['choices'] as List<dynamic>)
          .map((e) =>
              ChatCompletionResponseChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num).toInt(),
      id: json['id'] as String,
      model: json['model'] as String,
      object: json['object'] as String,
      citations: (json['citations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      systemFingerprint: json['system_fingerprint'] as String?,
      usage: json['usage'] == null
          ? null
          : ChatCompletionResponseUsage.fromJson(
              json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionResponseToJson(
        _ChatCompletionResponse instance) =>
    <String, dynamic>{
      'choices': instance.choices,
      'created': instance.created,
      'id': instance.id,
      'model': instance.model,
      'object': instance.object,
      'citations': instance.citations,
      'system_fingerprint': instance.systemFingerprint,
      'usage': instance.usage,
    };
