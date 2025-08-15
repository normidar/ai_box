// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thinking_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThinkingConfig _$ThinkingConfigFromJson(Map<String, dynamic> json) =>
    _ThinkingConfig(
      includeThoughts: json['includeThoughts'] as bool,
      thinkingBudget: (json['thinkingBudget'] as num).toInt(),
    );

Map<String, dynamic> _$ThinkingConfigToJson(_ThinkingConfig instance) =>
    <String, dynamic>{
      'includeThoughts': instance.includeThoughts,
      'thinkingBudget': instance.thinkingBudget,
    };
