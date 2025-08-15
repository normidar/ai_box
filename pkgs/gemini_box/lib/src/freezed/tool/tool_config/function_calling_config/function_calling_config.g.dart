// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_calling_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionCallingConfig _$FunctionCallingConfigFromJson(
        Map<String, dynamic> json) =>
    _FunctionCallingConfig(
      mode: $enumDecodeNullable(_$ModeEnumMap, json['mode']),
      allowedFunctionNames: (json['allowedFunctionNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FunctionCallingConfigToJson(
        _FunctionCallingConfig instance) =>
    <String, dynamic>{
      'mode': _$ModeEnumMap[instance.mode],
      'allowedFunctionNames': instance.allowedFunctionNames,
    };

const _$ModeEnumMap = {
  Mode.MODE_UNSPECIFIED: 'MODE_UNSPECIFIED',
  Mode.AUTO: 'AUTO',
  Mode.ANY: 'ANY',
  Mode.NONE: 'NONE',
  Mode.VALIDATED: 'VALIDATED',
};
