import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/finish_reason.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/citation_metadata/citation_metadata.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_attribution/grounding_attribution/grounding_attribution.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/grounding_metadata/grounding_metadata/grounding_metadata.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/logprobs_result/logprobs_result/logprobs_result.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/safety_rating/safety_rating.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/url_context_metadata/url_context_metadata/url_context_metadata.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/url_retrieval_metadata/url_retrieval_metadata/url_retrieval_metadata.dart';
import 'package:gemini_box/src/freezed/request_body/content/content.dart';

part 'candidate.freezed.dart';
part 'candidate.g.dart';

@freezed
abstract class Candidate with _$Candidate {
  factory Candidate({
    Content? content,
    FinishReason? finishReason,
    List<SafetyRating>? safetyRatings,
    CitationMetadata? citationMetadata,
    int? tokenCount,
    List<GroundingAttribution>? groundingAttributions,
    GroundingMetadata? groundingMetadata,
    double? avgLogprobs,
    LogprobsResult? logprobsResult,
    UrlRetrievalMetadata? urlRetrievalMetadata,
    UrlContextMetadata? urlContextMetadata,
    int? index,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
  const Candidate._();
}
