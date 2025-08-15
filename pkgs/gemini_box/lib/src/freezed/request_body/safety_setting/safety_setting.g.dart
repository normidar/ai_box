// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafetySetting _$SafetySettingFromJson(Map<String, dynamic> json) =>
    _SafetySetting(
      category: $enumDecode(_$HarmCategoryEnumMap, json['category']),
      threshold: $enumDecode(_$HarmBlockThresholdEnumMap, json['threshold']),
    );

Map<String, dynamic> _$SafetySettingToJson(_SafetySetting instance) =>
    <String, dynamic>{
      'category': _$HarmCategoryEnumMap[instance.category]!,
      'threshold': _$HarmBlockThresholdEnumMap[instance.threshold]!,
    };

const _$HarmCategoryEnumMap = {
  HarmCategory.HARM_CATEGORY_UNSPECIFIED: 'HARM_CATEGORY_UNSPECIFIED',
  HarmCategory.HARM_CATEGORY_DEROGATORY: 'HARM_CATEGORY_DEROGATORY',
  HarmCategory.HARM_CATEGORY_TOXICITY: 'HARM_CATEGORY_TOXICITY',
  HarmCategory.HARM_CATEGORY_VIOLENCE: 'HARM_CATEGORY_VIOLENCE',
  HarmCategory.HARM_CATEGORY_SEXUAL: 'HARM_CATEGORY_SEXUAL',
  HarmCategory.HARM_CATEGORY_MEDICAL: 'HARM_CATEGORY_MEDICAL',
  HarmCategory.HARM_CATEGORY_DANGEROUS: 'HARM_CATEGORY_DANGEROUS',
  HarmCategory.HARM_CATEGORY_HARASSMENT: 'HARM_CATEGORY_HARASSMENT',
  HarmCategory.HARM_CATEGORY_HATE_SPEECH: 'HARM_CATEGORY_HATE_SPEECH',
  HarmCategory.HARM_CATEGORY_SEXUALLY_EXPLICIT:
      'HARM_CATEGORY_SEXUALLY_EXPLICIT',
  HarmCategory.HARM_CATEGORY_DANGEROUS_CONTENT:
      'HARM_CATEGORY_DANGEROUS_CONTENT',
  HarmCategory.HARM_CATEGORY_CIVIC_INTEGRITY: 'HARM_CATEGORY_CIVIC_INTEGRITY',
};

const _$HarmBlockThresholdEnumMap = {
  HarmBlockThreshold.HARM_BLOCK_THRESHOLD_UNSPECIFIED:
      'HARM_BLOCK_THRESHOLD_UNSPECIFIED',
  HarmBlockThreshold.BLOCK_LOW_AND_ABOVE: 'BLOCK_LOW_AND_ABOVE',
  HarmBlockThreshold.BLOCK_MEDIUM_AND_ABOVE: 'BLOCK_MEDIUM_AND_ABOVE',
  HarmBlockThreshold.BLOCK_ONLY_HIGH: 'BLOCK_ONLY_HIGH',
  HarmBlockThreshold.BLOCK_NONE: 'BLOCK_NONE',
  HarmBlockThreshold.OFF: 'OFF',
};
