import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_attribution/attribution_source_id/attribution_source_id.dart';
import 'package:gemini_box/src/freezed/request_body/content/content.dart';

part 'grounding_attribution.freezed.dart';
part 'grounding_attribution.g.dart';

@freezed
abstract class GroundingAttribution with _$GroundingAttribution {
  factory GroundingAttribution({
    AttributionSourceId? sourceId,
    Content? content,
  }) = _GroundingAttribution;

  factory GroundingAttribution.fromJson(Map<String, dynamic> json) =>
      _$GroundingAttributionFromJson(json);
  const GroundingAttribution._();
}
