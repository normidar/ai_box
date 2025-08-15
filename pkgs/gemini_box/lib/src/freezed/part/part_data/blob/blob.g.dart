// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Blob _$BlobFromJson(Map<String, dynamic> json) => _Blob(
      mimeType: json['mime_type'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$BlobToJson(_Blob instance) => <String, dynamic>{
      'mime_type': instance.mimeType,
      'data': instance.data,
    };
