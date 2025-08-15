// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding_chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroundingChunk _$GroundingChunkFromJson(Map<String, dynamic> json) =>
    _GroundingChunk(
      web: json['web'] == null
          ? null
          : Web.fromJson(json['web'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroundingChunkToJson(_GroundingChunk instance) =>
    <String, dynamic>{
      'web': instance.web,
    };
