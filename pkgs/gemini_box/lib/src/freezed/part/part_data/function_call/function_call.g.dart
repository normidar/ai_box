// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) =>
    _FunctionCall(
      name: json['name'] as String,
      args: json['args'] as Map<String, dynamic>?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$FunctionCallToJson(_FunctionCall instance) =>
    <String, dynamic>{
      'name': instance.name,
      'args': instance.args,
      'id': instance.id,
    };
