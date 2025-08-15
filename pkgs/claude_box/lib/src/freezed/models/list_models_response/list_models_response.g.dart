// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_models_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListModelsResponse _$ListModelsResponseFromJson(Map<String, dynamic> json) =>
    _ListModelsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ModelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['has_more'] as bool,
      firstId: json['first_id'] as String,
      lastId: json['last_id'] as String,
    );

Map<String, dynamic> _$ListModelsResponseToJson(_ListModelsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'has_more': instance.hasMore,
      'first_id': instance.firstId,
      'last_id': instance.lastId,
    };
