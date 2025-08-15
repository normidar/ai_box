// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UrlMetadata _$UrlMetadataFromJson(Map<String, dynamic> json) => _UrlMetadata(
      retrievedUrl: json['retrievedUrl'] as String?,
      urlRetrievalStatus: $enumDecodeNullable(
          _$UrlRetrievalStatusEnumMap, json['urlRetrievalStatus']),
    );

Map<String, dynamic> _$UrlMetadataToJson(_UrlMetadata instance) =>
    <String, dynamic>{
      'retrievedUrl': instance.retrievedUrl,
      'urlRetrievalStatus':
          _$UrlRetrievalStatusEnumMap[instance.urlRetrievalStatus],
    };

const _$UrlRetrievalStatusEnumMap = {
  UrlRetrievalStatus.unspecified: 'URL_RETRIEVAL_STATUS_UNSPECIFIED',
  UrlRetrievalStatus.success: 'URL_RETRIEVAL_STATUS_SUCCESS',
  UrlRetrievalStatus.error: 'URL_RETRIEVAL_STATUS_ERROR',
};
