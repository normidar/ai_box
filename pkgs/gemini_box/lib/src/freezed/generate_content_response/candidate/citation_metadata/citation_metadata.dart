import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/citation_source/citation_source.dart';

part 'citation_metadata.freezed.dart';
part 'citation_metadata.g.dart';

@freezed
abstract class CitationMetadata with _$CitationMetadata {
  factory CitationMetadata({
    required List<CitationSource> citationSources,
  }) = _CitationMetadata;

  factory CitationMetadata.fromJson(Map<String, dynamic> json) =>
      _$CitationMetadataFromJson(json);
  const CitationMetadata._();
}
