import 'package:freezed_annotation/freezed_annotation.dart';

part 'segment.freezed.dart';
part 'segment.g.dart';

@freezed
abstract class Segment with _$Segment {
  factory Segment({
    int? partIndex,
    int? startIndex,
    int? endIndex,
    String? text,
  }) = _Segment;

  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);
  const Segment._();
}
