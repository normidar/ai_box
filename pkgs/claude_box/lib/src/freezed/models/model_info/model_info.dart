import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_info.freezed.dart';
part 'model_info.g.dart';

@freezed
abstract class ModelInfo with _$ModelInfo {
  factory ModelInfo({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'display_name') required String displayName,
  }) = _ModelInfo;

  factory ModelInfo.fromJson(Map<String, dynamic> json) =>
      _$ModelInfoFromJson(json);
  const ModelInfo._();
}
