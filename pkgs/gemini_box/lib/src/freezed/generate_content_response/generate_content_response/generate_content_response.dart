import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/candidate/candidate.dart';
import 'package:gemini_box/src/freezed/generate_content_response/usage_metadata/usage_metadata.dart';

part 'generate_content_response.freezed.dart';
part 'generate_content_response.g.dart';

/// https://ai.google.dev/api/generate-content#generatecontentresponse
@freezed
abstract class GenerateContentResponse with _$GenerateContentResponse {
  factory GenerateContentResponse({
    List<Candidate>? candidates,
    // Feedback on the prompt specified in GenerateContentRequest.
    Map<String, dynamic>? promptFeedback,
    // Metadata on the generation requests' token usage.
    UsageMetadata? usageMetadata,
    // The model version used to generate the response.
    String? modelVersion,
    // A unique identifier for the response.
    String? responseId,
  }) = _GenerateContentResponse;

  factory GenerateContentResponse.fromJson(Map<String, dynamic> json) =>
      _$GenerateContentResponseFromJson(json);
  const GenerateContentResponse._();
}
