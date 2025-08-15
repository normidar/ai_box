// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitationMetadata _$CitationMetadataFromJson(Map<String, dynamic> json) =>
    _CitationMetadata(
      citationSources: (json['citationSources'] as List<dynamic>)
          .map((e) => CitationSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CitationMetadataToJson(_CitationMetadata instance) =>
    <String, dynamic>{
      'citationSources': instance.citationSources,
    };
