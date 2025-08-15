import 'package:freezed_annotation/freezed_annotation.dart';

enum UrlRetrievalStatus {
  @JsonValue('URL_RETRIEVAL_STATUS_UNSPECIFIED')
  unspecified,
  @JsonValue('URL_RETRIEVAL_STATUS_SUCCESS')
  success,
  @JsonValue('URL_RETRIEVAL_STATUS_ERROR')
  error,
}
