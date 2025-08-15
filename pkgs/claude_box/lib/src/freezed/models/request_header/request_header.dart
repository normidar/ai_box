import 'package:api_http/api_http.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_header.freezed.dart';
part 'request_header.g.dart';

List<String>? _anthropicBetaFromJson(dynamic value) {
  if (value == null) return null;
  if (value is List) return List<String>.from(value);
  if (value is String) return value.split(',');
  return null;
}

String? _anthropicBetaToJson(List<String>? list) {
  if (list == null || list.isEmpty) return null;
  return list.join(',');
}

@freezed
abstract class RequestHeader with _$RequestHeader {
  factory RequestHeader({
    @JsonKey(name: 'x-api-key') required String apiKey,
    @JsonKey(name: 'anthropic-version') required String anthropicVersion,
    @JsonKey(
      name: 'anthropic-beta',
      toJson: _anthropicBetaToJson,
      fromJson: _anthropicBetaFromJson,
      includeIfNull: false,
    )
    List<String>? anthropicBeta,
  }) = _RequestHeader;

  factory RequestHeader.fromJson(Map<String, dynamic> json) =>
      _$RequestHeaderFromJson(json);

  const RequestHeader._();

  RestHeaders get restHeaders => RestHeaders(toJson().cast<String, String>());
}
