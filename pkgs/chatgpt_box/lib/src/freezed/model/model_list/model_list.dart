import 'package:chatgpt_box/src/freezed/model/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_list.freezed.dart';
part 'model_list.g.dart';

@freezed
abstract class ModelList with _$ModelList {
  factory ModelList({required String object, required List<Model> data}) =
      _ModelList;

  factory ModelList.fromJson(Map<String, dynamic> json) =>
      _$ModelListFromJson(json);
  const ModelList._();
}
