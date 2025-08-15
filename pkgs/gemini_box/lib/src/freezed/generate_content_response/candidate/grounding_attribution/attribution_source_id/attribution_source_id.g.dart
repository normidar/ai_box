// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution_source_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttributionSourceId _$AttributionSourceIdFromJson(Map<String, dynamic> json) =>
    _AttributionSourceId(
      groundingPassage: json['groundingPassage'] == null
          ? null
          : GroundingPassageId.fromJson(
              json['groundingPassage'] as Map<String, dynamic>),
      semanticRetrieverChunk: json['semanticRetrieverChunk'] == null
          ? null
          : SemanticRetrieverChunk.fromJson(
              json['semanticRetrieverChunk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributionSourceIdToJson(
        _AttributionSourceId instance) =>
    <String, dynamic>{
      'groundingPassage': instance.groundingPassage,
      'semanticRetrieverChunk': instance.semanticRetrieverChunk,
    };
