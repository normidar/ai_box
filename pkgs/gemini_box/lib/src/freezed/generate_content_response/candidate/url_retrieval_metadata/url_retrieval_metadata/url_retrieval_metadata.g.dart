// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_retrieval_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UrlRetrievalMetadata _$UrlRetrievalMetadataFromJson(
        Map<String, dynamic> json) =>
    _UrlRetrievalMetadata(
      urlRetrievalContexts: (json['urlRetrievalContexts'] as List<dynamic>?)
          ?.map((e) => UrlRetrievalContext.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UrlRetrievalMetadataToJson(
        _UrlRetrievalMetadata instance) =>
    <String, dynamic>{
      'urlRetrievalContexts': instance.urlRetrievalContexts,
    };
