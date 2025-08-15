// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroundingMetadata _$GroundingMetadataFromJson(Map<String, dynamic> json) =>
    _GroundingMetadata(
      groundingChunks: (json['groundingChunks'] as List<dynamic>?)
          ?.map((e) => GroundingChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      groundingSupports: (json['groundingSupports'] as List<dynamic>?)
          ?.map((e) => GroundingSupport.fromJson(e as Map<String, dynamic>))
          .toList(),
      webSearchQueries: (json['webSearchQueries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchEntryPoint: json['searchEntryPoint'] == null
          ? null
          : SearchEntryPoint.fromJson(
              json['searchEntryPoint'] as Map<String, dynamic>),
      retrievalMetadata: json['retrievalMetadata'] == null
          ? null
          : RetrievalMetadata.fromJson(
              json['retrievalMetadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroundingMetadataToJson(_GroundingMetadata instance) =>
    <String, dynamic>{
      'groundingChunks': instance.groundingChunks,
      'groundingSupports': instance.groundingSupports,
      'webSearchQueries': instance.webSearchQueries,
      'searchEntryPoint': instance.searchEntryPoint,
      'retrievalMetadata': instance.retrievalMetadata,
    };
