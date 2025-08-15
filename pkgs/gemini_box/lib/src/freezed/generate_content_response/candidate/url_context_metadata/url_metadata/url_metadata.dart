import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/url_retrieval_status.dart';

part 'url_metadata.freezed.dart';
part 'url_metadata.g.dart';

@freezed
abstract class UrlMetadata with _$UrlMetadata {
  factory UrlMetadata({
    String? retrievedUrl,
    UrlRetrievalStatus? urlRetrievalStatus,
  }) = _UrlMetadata;

  factory UrlMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlMetadataFromJson(json);
  const UrlMetadata._();
}
