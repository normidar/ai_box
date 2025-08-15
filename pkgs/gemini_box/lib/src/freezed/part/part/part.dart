import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/part/part_data/blob/blob.dart';
import 'package:gemini_box/src/freezed/part/part_data/code_execution_result/code_execution_result.dart';
import 'package:gemini_box/src/freezed/part/part_data/executable_code/executable_code.dart';
import 'package:gemini_box/src/freezed/part/part_data/file_data/file_data.dart';
import 'package:gemini_box/src/freezed/part/part_data/function_call/function_call.dart';
import 'package:gemini_box/src/freezed/part/part_data/function_response/function_response.dart';
import 'package:gemini_box/src/freezed/part/video_metadata/video_metadata.dart';

part 'part.freezed.dart';
part 'part.g.dart';

/// Ref: https://ai.google.dev/api/caching#Part
@freezed
abstract class Part with _$Part {
  factory Part({
    bool? thought,
    String? text,
    Blob? inlineData,
    FunctionCall? functionCall,
    FunctionResponse? functionResponse,
    FileData? fileData,
    ExecutableCode? executableCode,
    CodeExecutionResult? codeExecutionResult,
    VideoMetadata? videoMetadata,
  }) = _Part;

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
  const Part._();
}
