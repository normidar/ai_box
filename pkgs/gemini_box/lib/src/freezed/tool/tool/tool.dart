import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/tool/function_declaration/function_declaration.dart';

part 'tool.freezed.dart';
part 'tool.g.dart';

@freezed
abstract class Tool with _$Tool {
  factory Tool({
    List<FunctionDeclaration>? functionDeclarations,
  }) = _Tool;

  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
  const Tool._();
}
