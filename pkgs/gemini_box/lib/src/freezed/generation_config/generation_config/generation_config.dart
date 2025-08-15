// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/modality.dart';
import 'package:gemini_box/src/freezed/generation_config/schema/schema.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/speech_config/speech_config.dart';
import 'package:gemini_box/src/freezed/generation_config/thinking_config/thinking_config.dart';

part 'generation_config.freezed.dart';
part 'generation_config.g.dart';

/// https://ai.google.dev/api/generate-content#v1beta.GenerationConfig
@freezed
abstract class GenerationConfig with _$GenerationConfig {
  factory GenerationConfig({
    List<String>? stopSequences,
    String? responseMimeType,
    Schema? responseSchema,
    List<Modality>? responseModalities,
    int? candidateCount,
    int? maxOutputTokens,
    num? temperature,
    num? topP,
    int? topK,
    int? seed,
    num? presencePenalty,
    num? frequencyPenalty,
    bool? responseLogprobs,
    int? logprobs,
    bool? enableEnhancedCivicAnswers,
    SpeechConfig? speechConfig,
    ThinkingConfig? thinkingConfig,
    MediaResolution? mediaResolution,
  }) = _GenerationConfig;

  factory GenerationConfig.fromJson(Map<String, dynamic> json) =>
      _$GenerationConfigFromJson(json);
  const GenerationConfig._();
}

enum MediaResolution {
  MEDIA_RESOLUTION_UNSPECIFIED,
  MEDIA_RESOLUTION_LOW,
  MEDIA_RESOLUTION_MEDIUM,
  MEDIA_RESOLUTION_HIGH
}
