// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Segment _$SegmentFromJson(Map<String, dynamic> json) => _Segment(
      partIndex: (json['partIndex'] as num?)?.toInt(),
      startIndex: (json['startIndex'] as num?)?.toInt(),
      endIndex: (json['endIndex'] as num?)?.toInt(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$SegmentToJson(_Segment instance) => <String, dynamic>{
      'partIndex': instance.partIndex,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'text': instance.text,
    };
