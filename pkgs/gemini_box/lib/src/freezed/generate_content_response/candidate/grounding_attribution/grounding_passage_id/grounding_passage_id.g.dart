// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding_passage_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroundingPassageId _$GroundingPassageIdFromJson(Map<String, dynamic> json) =>
    _GroundingPassageId(
      passageId: json['passageId'] as String?,
      partIndex: (json['partIndex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GroundingPassageIdToJson(_GroundingPassageId instance) =>
    <String, dynamic>{
      'passageId': instance.passageId,
      'partIndex': instance.partIndex,
    };
