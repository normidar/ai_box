// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Model _$ModelFromJson(Map<String, dynamic> json) => _Model(
  id: json['id'] as String,
  object: json['object'] as String,
  created: (json['created'] as num).toInt(),
  ownedBy: json['owned_by'] as String,
);

Map<String, dynamic> _$ModelToJson(_Model instance) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'created': instance.created,
  'owned_by': instance.ownedBy,
};
