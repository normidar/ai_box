// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionObject _$ChatCompletionObjectFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObject(
  choices:
      (json['choices'] as List<dynamic>)
          .map(
            (e) =>
                ChatCompletionObjectChoice.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  created: (json['created'] as num).toInt(),
  id: json['id'] as String,
  model: json['model'] as String,
  object: json['object'] as String,
  systemFingerprint: json['system_fingerprint'] as String,
  usage: ChatCompletionObjectUsage.fromJson(
    json['usage'] as Map<String, dynamic>,
  ),
  serviceTier: json['service_tier'] as String?,
);

Map<String, dynamic> _$ChatCompletionObjectToJson(
  _ChatCompletionObject instance,
) => <String, dynamic>{
  'choices': instance.choices,
  'created': instance.created,
  'id': instance.id,
  'model': instance.model,
  'object': instance.object,
  'system_fingerprint': instance.systemFingerprint,
  'usage': instance.usage,
  'service_tier': instance.serviceTier,
};
