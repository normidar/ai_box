// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'executable_code.freezed.dart';
part 'executable_code.g.dart';

@freezed
abstract class ExecutableCode with _$ExecutableCode {
  factory ExecutableCode({
    required String code,
    required Language language,
  }) = _ExecutableCode;

  factory ExecutableCode.fromJson(Map<String, dynamic> json) =>
      _$ExecutableCodeFromJson(json);
  const ExecutableCode._();
}

enum Language { LANGUAGE_UNSPECIFIED, PYTHON }
