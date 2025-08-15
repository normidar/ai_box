// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Candidate _$CandidateFromJson(Map<String, dynamic> json) => _Candidate(
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      finishReason:
          $enumDecodeNullable(_$FinishReasonEnumMap, json['finishReason']),
      safetyRatings: (json['safetyRatings'] as List<dynamic>?)
          ?.map((e) => SafetyRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      citationMetadata: json['citationMetadata'] == null
          ? null
          : CitationMetadata.fromJson(
              json['citationMetadata'] as Map<String, dynamic>),
      tokenCount: (json['tokenCount'] as num?)?.toInt(),
      groundingAttributions: (json['groundingAttributions'] as List<dynamic>?)
          ?.map((e) => GroundingAttribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      groundingMetadata: json['groundingMetadata'] == null
          ? null
          : GroundingMetadata.fromJson(
              json['groundingMetadata'] as Map<String, dynamic>),
      avgLogprobs: (json['avgLogprobs'] as num?)?.toDouble(),
      logprobsResult: json['logprobsResult'] == null
          ? null
          : LogprobsResult.fromJson(
              json['logprobsResult'] as Map<String, dynamic>),
      urlRetrievalMetadata: json['urlRetrievalMetadata'] == null
          ? null
          : UrlRetrievalMetadata.fromJson(
              json['urlRetrievalMetadata'] as Map<String, dynamic>),
      urlContextMetadata: json['urlContextMetadata'] == null
          ? null
          : UrlContextMetadata.fromJson(
              json['urlContextMetadata'] as Map<String, dynamic>),
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CandidateToJson(_Candidate instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': _$FinishReasonEnumMap[instance.finishReason],
      'safetyRatings': instance.safetyRatings,
      'citationMetadata': instance.citationMetadata,
      'tokenCount': instance.tokenCount,
      'groundingAttributions': instance.groundingAttributions,
      'groundingMetadata': instance.groundingMetadata,
      'avgLogprobs': instance.avgLogprobs,
      'logprobsResult': instance.logprobsResult,
      'urlRetrievalMetadata': instance.urlRetrievalMetadata,
      'urlContextMetadata': instance.urlContextMetadata,
      'index': instance.index,
    };

const _$FinishReasonEnumMap = {
  FinishReason.FINISH_REASON_UNSPECIFIED: 'FINISH_REASON_UNSPECIFIED',
  FinishReason.STOP: 'STOP',
  FinishReason.MAX_TOKENS: 'MAX_TOKENS',
  FinishReason.SAFETY: 'SAFETY',
  FinishReason.RECITATION: 'RECITATION',
  FinishReason.LANGUAGE: 'LANGUAGE',
  FinishReason.OTHER: 'OTHER',
  FinishReason.BLOCKLIST: 'BLOCKLIST',
  FinishReason.PROHIBITED_CONTENT: 'PROHIBITED_CONTENT',
  FinishReason.SPII: 'SPII',
  FinishReason.MALFORMED_FUNCTION_CALL: 'MALFORMED_FUNCTION_CALL',
  FinishReason.IMAGE_SAFETY: 'IMAGE_SAFETY',
};
