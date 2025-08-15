import 'package:freezed_annotation/freezed_annotation.dart';

part 'retrieval_metadata.freezed.dart';
part 'retrieval_metadata.g.dart';

@freezed
abstract class RetrievalMetadata with _$RetrievalMetadata {
  factory RetrievalMetadata({
    double? googleSearchDynamicRetrievalScore,
  }) = _RetrievalMetadata;

  factory RetrievalMetadata.fromJson(Map<String, dynamic> json) =>
      _$RetrievalMetadataFromJson(json);
  const RetrievalMetadata._();
}
