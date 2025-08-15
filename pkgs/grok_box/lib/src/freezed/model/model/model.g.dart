// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Model _$ModelFromJson(Map<String, dynamic> json) => _Model(
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      object: json['object'] as String,
      ownedBy: json['owned_by'] as String,
    );

Map<String, dynamic> _$ModelToJson(_Model instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'object': instance.object,
      'owned_by': instance.ownedBy,
    };
