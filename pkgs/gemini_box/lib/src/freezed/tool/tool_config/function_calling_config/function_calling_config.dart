// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_calling_config.freezed.dart';
part 'function_calling_config.g.dart';

@freezed
abstract class FunctionCallingConfig with _$FunctionCallingConfig {
  factory FunctionCallingConfig({
    Mode? mode,
    List<String>? allowedFunctionNames,
  }) = _FunctionCallingConfig;

  factory FunctionCallingConfig.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallingConfigFromJson(json);
  const FunctionCallingConfig._();
}

enum Mode { MODE_UNSPECIFIED, AUTO, ANY, NONE, VALIDATED }
