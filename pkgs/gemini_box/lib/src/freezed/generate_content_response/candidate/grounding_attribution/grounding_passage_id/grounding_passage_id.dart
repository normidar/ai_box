import 'package:freezed_annotation/freezed_annotation.dart';

part 'grounding_passage_id.freezed.dart';
part 'grounding_passage_id.g.dart';

@freezed
abstract class GroundingPassageId with _$GroundingPassageId {
  factory GroundingPassageId({
    String? passageId,
    int? partIndex,
  }) = _GroundingPassageId;

  factory GroundingPassageId.fromJson(Map<String, dynamic> json) =>
      _$GroundingPassageIdFromJson(json);
  const GroundingPassageId._();
}
