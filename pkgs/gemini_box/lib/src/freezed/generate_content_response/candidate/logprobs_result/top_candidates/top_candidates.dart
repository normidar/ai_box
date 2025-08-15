import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generate_content_response/candidate/candidate/candidate.dart';

part 'top_candidates.freezed.dart';
part 'top_candidates.g.dart';

@freezed
abstract class TopCandidates with _$TopCandidates {
  factory TopCandidates({
    List<Candidate>? candidates,
  }) = _TopCandidates;

  factory TopCandidates.fromJson(Map<String, dynamic> json) =>
      _$TopCandidatesFromJson(json);
  const TopCandidates._();
}
