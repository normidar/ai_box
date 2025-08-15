import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/segment/segment.dart';

part 'grounding_support.freezed.dart';
part 'grounding_support.g.dart';

@freezed
abstract class GroundingSupport with _$GroundingSupport {
  factory GroundingSupport({
    List<int>? groundingChunkIndices,
    List<double>? confidenceScores,
    Segment? segment,
  }) = _GroundingSupport;

  factory GroundingSupport.fromJson(Map<String, dynamic> json) =>
      _$GroundingSupportFromJson(json);
  const GroundingSupport._();
}
