// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateContentResponse _$GenerateContentResponseFromJson(
        Map<String, dynamic> json) =>
    _GenerateContentResponse(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      promptFeedback: json['promptFeedback'] as Map<String, dynamic>?,
      usageMetadata: json['usageMetadata'] == null
          ? null
          : UsageMetadata.fromJson(
              json['usageMetadata'] as Map<String, dynamic>),
      modelVersion: json['modelVersion'] as String?,
      responseId: json['responseId'] as String?,
    );

Map<String, dynamic> _$GenerateContentResponseToJson(
        _GenerateContentResponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'promptFeedback': instance.promptFeedback,
      'usageMetadata': instance.usageMetadata,
      'modelVersion': instance.modelVersion,
      'responseId': instance.responseId,
    };
