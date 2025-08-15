import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/tool/tool_config/function_calling_config/function_calling_config.dart';

part 'tool_config.freezed.dart';
part 'tool_config.g.dart';

@freezed
abstract class ToolConfig with _$ToolConfig {
  factory ToolConfig({
    FunctionCallingConfig? functionCallingConfig,
  }) = _ToolConfig;

  factory ToolConfig.fromJson(Map<String, dynamic> json) =>
      _$ToolConfigFromJson(json);
  const ToolConfig._();
}
