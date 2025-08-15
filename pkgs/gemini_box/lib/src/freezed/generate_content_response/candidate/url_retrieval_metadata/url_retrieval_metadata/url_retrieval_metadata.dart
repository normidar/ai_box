import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/url_retrieval_metadata/url_retrieval_context/url_retrieval_context.dart';

part 'url_retrieval_metadata.freezed.dart';
part 'url_retrieval_metadata.g.dart';

@freezed
abstract class UrlRetrievalMetadata with _$UrlRetrievalMetadata {
  factory UrlRetrievalMetadata({
    List<UrlRetrievalContext>? urlRetrievalContexts,
  }) = _UrlRetrievalMetadata;

  factory UrlRetrievalMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlRetrievalMetadataFromJson(json);
  const UrlRetrievalMetadata._();
}
