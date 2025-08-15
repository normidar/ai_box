// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestBody _$RequestBodyFromJson(Map<String, dynamic> json) => _RequestBody(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
      toolConfig: json['toolConfig'] == null
          ? null
          : ToolConfig.fromJson(json['toolConfig'] as Map<String, dynamic>),
      safetySettings: (json['safetySettings'] as List<dynamic>?)
          ?.map((e) => SafetySetting.fromJson(e as Map<String, dynamic>))
          .toList(),
      systemInstruction: json['systemInstruction'] == null
          ? null
          : Content.fromJson(json['systemInstruction'] as Map<String, dynamic>),
      generationConfig: json['generationConfig'] == null
          ? null
          : GenerationConfig.fromJson(
              json['generationConfig'] as Map<String, dynamic>),
      cachedContent: json['cachedContent'] as String?,
    );

Map<String, dynamic> _$RequestBodyToJson(_RequestBody instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'tools': instance.tools,
      'toolConfig': instance.toolConfig,
      'safetySettings': instance.safetySettings,
      'systemInstruction': instance.systemInstruction,
      'generationConfig': instance.generationConfig,
      'cachedContent': instance.cachedContent,
    };
