import 'package:freezed_annotation/freezed_annotation.dart';

part 'citation_source.freezed.dart';
part 'citation_source.g.dart';

@freezed
abstract class CitationSource with _$CitationSource {
  factory CitationSource({
    int? startIndex,
    int? endIndex,
    String? uri,
    String? license,
  }) = _CitationSource;

  factory CitationSource.fromJson(Map<String, dynamic> json) =>
      _$CitationSourceFromJson(json);
  const CitationSource._();
}
