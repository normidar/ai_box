// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionResponse _$FunctionResponseFromJson(Map<String, dynamic> json) =>
    _FunctionResponse(
      name: json['name'] as String,
      response: json['response'] as Map<String, dynamic>,
      id: json['id'] as String?,
      willContinue: json['willContinue'] as bool?,
      scheduling: $enumDecodeNullable(_$SchedulingEnumMap, json['scheduling']),
    );

Map<String, dynamic> _$FunctionResponseToJson(_FunctionResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'response': instance.response,
      'id': instance.id,
      'willContinue': instance.willContinue,
      'scheduling': _$SchedulingEnumMap[instance.scheduling],
    };

const _$SchedulingEnumMap = {
  Scheduling.SCHEDULING_UNSPECIFIED: 'SCHEDULING_UNSPECIFIED',
  Scheduling.SILENT: 'SILENT',
  Scheduling.WHEN_IDLE: 'WHEN_IDLE',
  Scheduling.INTERRUPT: 'INTERRUPT',
};
