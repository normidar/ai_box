// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Part _$PartFromJson(Map<String, dynamic> json) => _Part(
      thought: json['thought'] as bool?,
      text: json['text'] as String?,
      inlineData: json['inlineData'] == null
          ? null
          : Blob.fromJson(json['inlineData'] as Map<String, dynamic>),
      functionCall: json['functionCall'] == null
          ? null
          : FunctionCall.fromJson(json['functionCall'] as Map<String, dynamic>),
      functionResponse: json['functionResponse'] == null
          ? null
          : FunctionResponse.fromJson(
              json['functionResponse'] as Map<String, dynamic>),
      fileData: json['fileData'] == null
          ? null
          : FileData.fromJson(json['fileData'] as Map<String, dynamic>),
      executableCode: json['executableCode'] == null
          ? null
          : ExecutableCode.fromJson(
              json['executableCode'] as Map<String, dynamic>),
      codeExecutionResult: json['codeExecutionResult'] == null
          ? null
          : CodeExecutionResult.fromJson(
              json['codeExecutionResult'] as Map<String, dynamic>),
      videoMetadata: json['videoMetadata'] == null
          ? null
          : VideoMetadata.fromJson(
              json['videoMetadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PartToJson(_Part instance) => <String, dynamic>{
      'thought': instance.thought,
      'text': instance.text,
      'inlineData': instance.inlineData,
      'functionCall': instance.functionCall,
      'functionResponse': instance.functionResponse,
      'fileData': instance.fileData,
      'executableCode': instance.executableCode,
      'codeExecutionResult': instance.codeExecutionResult,
      'videoMetadata': instance.videoMetadata,
    };
