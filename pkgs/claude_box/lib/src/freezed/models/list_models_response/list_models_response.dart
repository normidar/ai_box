import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_models_response.freezed.dart';
part 'list_models_response.g.dart';

@freezed
abstract class ListModelsResponse with _$ListModelsResponse {
  factory ListModelsResponse({
    @JsonKey(name: 'data') required List<ModelInfo> data,
    @JsonKey(name: 'has_more') required bool hasMore,
    @JsonKey(name: 'first_id') required String firstId,
    @JsonKey(name: 'last_id') required String lastId,
  }) = _ListModelsResponse;

  factory ListModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListModelsResponseFromJson(json);
  const ListModelsResponse._();
}
