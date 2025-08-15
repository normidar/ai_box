// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding_attribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroundingAttribution _$GroundingAttributionFromJson(
        Map<String, dynamic> json) =>
    _GroundingAttribution(
      sourceId: json['sourceId'] == null
          ? null
          : AttributionSourceId.fromJson(
              json['sourceId'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroundingAttributionToJson(
        _GroundingAttribution instance) =>
    <String, dynamic>{
      'sourceId': instance.sourceId,
      'content': instance.content,
    };
