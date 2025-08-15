// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoMetadata _$VideoMetadataFromJson(Map<String, dynamic> json) =>
    _VideoMetadata(
      startOffset: json['startOffset'] as String?,
      endOffset: json['endOffset'] as String?,
      fps: json['fps'] as num?,
    );

Map<String, dynamic> _$VideoMetadataToJson(_VideoMetadata instance) =>
    <String, dynamic>{
      'startOffset': instance.startOffset,
      'endOffset': instance.endOffset,
      'fps': instance.fps,
    };
