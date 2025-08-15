import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/grounding_chunk/grounding_chunk.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/grounding_support/grounding_support.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/retrieval_metadata/retrieval_metadata.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/search_entry_point/search_entry_point.dart';

part 'grounding_metadata.freezed.dart';
part 'grounding_metadata.g.dart';

@freezed
abstract class GroundingMetadata with _$GroundingMetadata {
  factory GroundingMetadata({
    List<GroundingChunk>? groundingChunks,
    List<GroundingSupport>? groundingSupports,
    List<String>? webSearchQueries,
    SearchEntryPoint? searchEntryPoint,
    RetrievalMetadata? retrievalMetadata,
  }) = _GroundingMetadata;

  factory GroundingMetadata.fromJson(Map<String, dynamic> json) =>
      _$GroundingMetadataFromJson(json);
  const GroundingMetadata._();
}
