// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_execution_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodeExecutionResult _$CodeExecutionResultFromJson(Map<String, dynamic> json) =>
    _CodeExecutionResult(
      outcome: $enumDecode(_$OutcomeEnumMap, json['outcome']),
      output: json['output'] as String?,
    );

Map<String, dynamic> _$CodeExecutionResultToJson(
        _CodeExecutionResult instance) =>
    <String, dynamic>{
      'outcome': _$OutcomeEnumMap[instance.outcome]!,
      'output': instance.output,
    };

const _$OutcomeEnumMap = {
  Outcome.OUTCOME_UNSPECIFIED: 'OUTCOME_UNSPECIFIED',
  Outcome.OUTCOME_OK: 'OUTCOME_OK',
  Outcome.OUTCOME_FAILED: 'OUTCOME_FAILED',
  Outcome.OUTCOME_DEADLINE_EXCEEDED: 'OUTCOME_DEADLINE_EXCEEDED',
};
