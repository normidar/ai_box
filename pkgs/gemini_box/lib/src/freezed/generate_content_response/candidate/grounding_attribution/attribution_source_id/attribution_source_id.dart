import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_attribution/grounding_passage_id/grounding_passage_id.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_attribution/semantic_retriever_chunk/semantic_retriever_chunk.dart';

part 'attribution_source_id.freezed.dart';
part 'attribution_source_id.g.dart';

@freezed
abstract class AttributionSourceId with _$AttributionSourceId {
  factory AttributionSourceId({
    GroundingPassageId? groundingPassage,
    SemanticRetrieverChunk? semanticRetrieverChunk,
  }) = _AttributionSourceId;

  factory AttributionSourceId.fromJson(Map<String, dynamic> json) =>
      _$AttributionSourceIdFromJson(json);
  const AttributionSourceId._();
}
