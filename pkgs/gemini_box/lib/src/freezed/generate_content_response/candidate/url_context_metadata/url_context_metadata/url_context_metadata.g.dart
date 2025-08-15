// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_context_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UrlContextMetadata _$UrlContextMetadataFromJson(Map<String, dynamic> json) =>
    _UrlContextMetadata(
      urlMetadata: (json['urlMetadata'] as List<dynamic>?)
          ?.map((e) => UrlMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UrlContextMetadataToJson(_UrlContextMetadata instance) =>
    <String, dynamic>{
      'urlMetadata': instance.urlMetadata,
    };
