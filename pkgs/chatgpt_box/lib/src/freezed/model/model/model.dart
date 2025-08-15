import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class Model with _$Model {
  factory Model({
    required String id,
    required String object,
    required int created,
    @JsonKey(name: 'owned_by') required String ownedBy,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
  const Model._();
}
