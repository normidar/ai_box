// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_execution_result.freezed.dart';
part 'code_execution_result.g.dart';

@freezed
abstract class CodeExecutionResult with _$CodeExecutionResult {
  factory CodeExecutionResult({
    required Outcome outcome,
    String? output,
  }) = _CodeExecutionResult;

  factory CodeExecutionResult.fromJson(Map<String, dynamic> json) =>
      _$CodeExecutionResultFromJson(json);
  const CodeExecutionResult._();
}

enum Outcome {
  OUTCOME_UNSPECIFIED,
  OUTCOME_OK,
  OUTCOME_FAILED,
  OUTCOME_DEADLINE_EXCEEDED
}
