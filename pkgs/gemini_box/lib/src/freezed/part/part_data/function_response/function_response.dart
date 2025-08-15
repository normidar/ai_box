// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_response.freezed.dart';
part 'function_response.g.dart';

@freezed
abstract class FunctionResponse with _$FunctionResponse {
  factory FunctionResponse({
    required String name,
    required Map<String, dynamic> response,
    String? id,
    bool? willContinue,
    Scheduling? scheduling,
  }) = _FunctionResponse;

  factory FunctionResponse.fromJson(Map<String, dynamic> json) =>
      _$FunctionResponseFromJson(json);
  const FunctionResponse._();
}

enum Scheduling { SCHEDULING_UNSPECIFIED, SILENT, WHEN_IDLE, INTERRUPT }
