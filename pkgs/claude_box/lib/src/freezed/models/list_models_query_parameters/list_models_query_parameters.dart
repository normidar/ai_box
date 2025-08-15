import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_models_query_parameters.freezed.dart';
part 'list_models_query_parameters.g.dart';

@freezed
abstract class ListModelsQueryParameters with _$ListModelsQueryParameters {
  factory ListModelsQueryParameters({
    @JsonKey(name: 'after_id') String? afterId,
    @JsonKey(name: 'before_id') String? beforeId,
    int? limit,
  }) = _ListModelsQueryParameters;

  factory ListModelsQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$ListModelsQueryParametersFromJson(json);
  const ListModelsQueryParameters._();
}
