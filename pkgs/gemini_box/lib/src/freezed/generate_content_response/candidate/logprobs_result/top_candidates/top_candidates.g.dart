// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_candidates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopCandidates _$TopCandidatesFromJson(Map<String, dynamic> json) =>
    _TopCandidates(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopCandidatesToJson(_TopCandidates instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };
