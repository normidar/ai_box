// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logprobs_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogprobsResult _$LogprobsResultFromJson(Map<String, dynamic> json) =>
    _LogprobsResult(
      topCandidates: (json['topCandidates'] as List<dynamic>?)
          ?.map((e) => TopCandidates.fromJson(e as Map<String, dynamic>))
          .toList(),
      chosenCandidates: (json['chosenCandidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LogprobsResultToJson(_LogprobsResult instance) =>
    <String, dynamic>{
      'topCandidates': instance.topCandidates,
      'chosenCandidates': instance.chosenCandidates,
    };
