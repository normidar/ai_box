// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tool _$ToolFromJson(Map<String, dynamic> json) => _Tool(
      functionDeclarations: (json['functionDeclarations'] as List<dynamic>?)
          ?.map((e) => FunctionDeclaration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ToolToJson(_Tool instance) => <String, dynamic>{
      'functionDeclarations': instance.functionDeclarations,
    };
