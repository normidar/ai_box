// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroundingSupport _$GroundingSupportFromJson(Map<String, dynamic> json) =>
    _GroundingSupport(
      groundingChunkIndices: (json['groundingChunkIndices'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      confidenceScores: (json['confidenceScores'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      segment: json['segment'] == null
          ? null
          : Segment.fromJson(json['segment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroundingSupportToJson(_GroundingSupport instance) =>
    <String, dynamic>{
      'groundingChunkIndices': instance.groundingChunkIndices,
      'confidenceScores': instance.confidenceScores,
      'segment': instance.segment,
    };
