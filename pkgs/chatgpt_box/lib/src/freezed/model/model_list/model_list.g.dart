// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelList _$ModelListFromJson(Map<String, dynamic> json) => _ModelList(
  object: json['object'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => Model.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ModelListToJson(_ModelList instance) =>
    <String, dynamic>{'object': instance.object, 'data': instance.data};
