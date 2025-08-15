import 'package:freezed_annotation/freezed_annotation.dart';

part 'semantic_retriever_chunk.freezed.dart';
part 'semantic_retriever_chunk.g.dart';

@freezed
abstract class SemanticRetrieverChunk with _$SemanticRetrieverChunk {
  factory SemanticRetrieverChunk({
    String? source,
    String? chunk,
  }) = _SemanticRetrieverChunk;

  factory SemanticRetrieverChunk.fromJson(Map<String, dynamic> json) =>
      _$SemanticRetrieverChunkFromJson(json);
  const SemanticRetrieverChunk._();
}
