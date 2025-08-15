// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitationSource _$CitationSourceFromJson(Map<String, dynamic> json) =>
    _CitationSource(
      startIndex: (json['startIndex'] as num?)?.toInt(),
      endIndex: (json['endIndex'] as num?)?.toInt(),
      uri: json['uri'] as String?,
      license: json['license'] as String?,
    );

Map<String, dynamic> _$CitationSourceToJson(_CitationSource instance) =>
    <String, dynamic>{
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'uri': instance.uri,
      'license': instance.license,
    };
