import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/part/part/part.dart';

part 'content.freezed.dart';
part 'content.g.dart';

/// Ref: https://ai.google.dev/api/caching#Content
@freezed
abstract class Content with _$Content {
  factory Content({
    required List<Part> parts,
    String? role,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
  const Content._();
}
