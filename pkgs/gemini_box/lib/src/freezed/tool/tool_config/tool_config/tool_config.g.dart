// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToolConfig _$ToolConfigFromJson(Map<String, dynamic> json) => _ToolConfig(
      functionCallingConfig: json['functionCallingConfig'] == null
          ? null
          : FunctionCallingConfig.fromJson(
              json['functionCallingConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ToolConfigToJson(_ToolConfig instance) =>
    <String, dynamic>{
      'functionCallingConfig': instance.functionCallingConfig,
    };
