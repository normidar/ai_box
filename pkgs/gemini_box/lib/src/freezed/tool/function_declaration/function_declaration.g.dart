// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_declaration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionDeclaration _$FunctionDeclarationFromJson(Map<String, dynamic> json) =>
    _FunctionDeclaration(
      name: json['name'] as String,
      description: json['description'] as String,
      parameters: Schema.fromJson(json['parameters'] as Map<String, dynamic>),
      response: Schema.fromJson(json['response'] as Map<String, dynamic>),
      behavior: $enumDecode(_$BehaviorEnumMap, json['behavior']),
    );

Map<String, dynamic> _$FunctionDeclarationToJson(
        _FunctionDeclaration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parameters': instance.parameters,
      'response': instance.response,
      'behavior': _$BehaviorEnumMap[instance.behavior]!,
    };

const _$BehaviorEnumMap = {
  Behavior.UNSPECIFIED: 'UNSPECIFIED',
  Behavior.BLOCKING: 'BLOCKING',
  Behavior.NON_BLOCKING: 'NON_BLOCKING',
};
