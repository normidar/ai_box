import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/candidate/candidate.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/logprobs_result/top_candidates/top_candidates.dart';

part 'logprobs_result.freezed.dart';
part 'logprobs_result.g.dart';

@freezed
abstract class LogprobsResult with _$LogprobsResult {
  factory LogprobsResult({
    List<TopCandidates>? topCandidates,
    List<Candidate>? chosenCandidates,
  }) = _LogprobsResult;

  factory LogprobsResult.fromJson(Map<String, dynamic> json) =>
      _$LogprobsResultFromJson(json);
  const LogprobsResult._();
}
