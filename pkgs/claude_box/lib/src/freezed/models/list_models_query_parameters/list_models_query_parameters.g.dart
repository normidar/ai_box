// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_models_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListModelsQueryParameters _$ListModelsQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _ListModelsQueryParameters(
      afterId: json['after_id'] as String?,
      beforeId: json['before_id'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ListModelsQueryParametersToJson(
        _ListModelsQueryParameters instance) =>
    <String, dynamic>{
      'after_id': instance.afterId,
      'before_id': instance.beforeId,
      'limit': instance.limit,
    };
