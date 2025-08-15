// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafetyRating _$SafetyRatingFromJson(Map<String, dynamic> json) =>
    _SafetyRating(
      category: $enumDecode(_$HarmCategoryEnumMap, json['category']),
      probability: $enumDecode(_$HarmProbabilityEnumMap, json['probability']),
      blocked: json['blocked'] as bool?,
    );

Map<String, dynamic> _$SafetyRatingToJson(_SafetyRating instance) =>
    <String, dynamic>{
      'category': _$HarmCategoryEnumMap[instance.category]!,
      'probability': _$HarmProbabilityEnumMap[instance.probability]!,
      'blocked': instance.blocked,
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

const _$HarmProbabilityEnumMap = {
  HarmProbability.HARM_PROBABILITY_UNSPECIFIED: 'HARM_PROBABILITY_UNSPECIFIED',
  HarmProbability.NEGLIGIBLE: 'NEGLIGIBLE',
  HarmProbability.LOW: 'LOW',
  HarmProbability.MEDIUM: 'MEDIUM',
  HarmProbability.HIGH: 'HIGH',
};
