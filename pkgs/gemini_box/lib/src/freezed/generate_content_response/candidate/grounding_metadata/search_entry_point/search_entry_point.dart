import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entry_point.freezed.dart';
part 'search_entry_point.g.dart';

@freezed
abstract class SearchEntryPoint with _$SearchEntryPoint {
  factory SearchEntryPoint({
    String? renderedContent,
    String? sdkBlob,
  }) = _SearchEntryPoint;

  factory SearchEntryPoint.fromJson(Map<String, dynamic> json) =>
      _$SearchEntryPointFromJson(json);
  const SearchEntryPoint._();
}
