import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/url_context_metadata/url_metadata/url_metadata.dart';

part 'url_context_metadata.freezed.dart';
part 'url_context_metadata.g.dart';

@freezed
abstract class UrlContextMetadata with _$UrlContextMetadata {
  factory UrlContextMetadata({
    List<UrlMetadata>? urlMetadata,
  }) = _UrlContextMetadata;

  factory UrlContextMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlContextMetadataFromJson(json);
  const UrlContextMetadata._();
}
