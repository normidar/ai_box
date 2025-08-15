import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/web/web.dart';

part 'grounding_chunk.freezed.dart';
part 'grounding_chunk.g.dart';

@freezed
abstract class GroundingChunk with _$GroundingChunk {
  factory GroundingChunk({
    Web? web,
  }) = _GroundingChunk;

  factory GroundingChunk.fromJson(Map<String, dynamic> json) =>
      _$GroundingChunkFromJson(json);
  const GroundingChunk._();
}
