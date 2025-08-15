// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/schema/schema.dart';

part 'function_declaration.freezed.dart';
part 'function_declaration.g.dart';

enum Behavior { UNSPECIFIED, BLOCKING, NON_BLOCKING }

@freezed
abstract class FunctionDeclaration with _$FunctionDeclaration {
  factory FunctionDeclaration({
    required String name,
    required String description,
    required Schema parameters,
    required Schema response,
    required Behavior behavior,
  }) = _FunctionDeclaration;

  factory FunctionDeclaration.fromJson(Map<String, dynamic> json) =>
      _$FunctionDeclarationFromJson(json);
  const FunctionDeclaration._();
}
