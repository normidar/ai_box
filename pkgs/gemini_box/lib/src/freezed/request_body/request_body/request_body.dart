import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/generation_config/generation_config.dart';
import 'package:gemini_box/src/freezed/request_body/content/content.dart';
import 'package:gemini_box/src/freezed/request_body/safety_setting/safety_setting.dart';
import 'package:gemini_box/src/freezed/tool/tool/tool.dart';
import 'package:gemini_box/src/freezed/tool/tool_config/tool_config/tool_config.dart';

part 'request_body.freezed.dart';
part 'request_body.g.dart';

@freezed
abstract class RequestBody with _$RequestBody {
  factory RequestBody({
    required List<Content> contents,
    List<Tool>? tools,
    ToolConfig? toolConfig,
    List<SafetySetting>? safetySettings,
    Content? systemInstruction,
    GenerationConfig? generationConfig,
    String? cachedContent,
  }) = _RequestBody;

  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);
  const RequestBody._();
}
