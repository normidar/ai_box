// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelInfo _$ModelInfoFromJson(Map<String, dynamic> json) => _ModelInfo(
      id: json['id'] as String,
      type: json['type'] as String,
      createdAt: json['created_at'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$ModelInfoToJson(_ModelInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'created_at': instance.createdAt,
      'display_name': instance.displayName,
    };
