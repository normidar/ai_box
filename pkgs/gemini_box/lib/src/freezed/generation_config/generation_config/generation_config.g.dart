// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerationConfig _$GenerationConfigFromJson(Map<String, dynamic> json) =>
    _GenerationConfig(
      stopSequences: (json['stopSequences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      responseMimeType: json['responseMimeType'] as String?,
      responseSchema: json['responseSchema'] == null
          ? null
          : Schema.fromJson(json['responseSchema'] as Map<String, dynamic>),
      responseModalities: (json['responseModalities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModalityEnumMap, e))
          .toList(),
      candidateCount: (json['candidateCount'] as num?)?.toInt(),
      maxOutputTokens: (json['maxOutputTokens'] as num?)?.toInt(),
      temperature: json['temperature'] as num?,
      topP: json['topP'] as num?,
      topK: (json['topK'] as num?)?.toInt(),
      seed: (json['seed'] as num?)?.toInt(),
      presencePenalty: json['presencePenalty'] as num?,
      frequencyPenalty: json['frequencyPenalty'] as num?,
      responseLogprobs: json['responseLogprobs'] as bool?,
      logprobs: (json['logprobs'] as num?)?.toInt(),
      enableEnhancedCivicAnswers: json['enableEnhancedCivicAnswers'] as bool?,
      speechConfig: json['speechConfig'] == null
          ? null
          : SpeechConfig.fromJson(json['speechConfig'] as Map<String, dynamic>),
      thinkingConfig: json['thinkingConfig'] == null
          ? null
          : ThinkingConfig.fromJson(
              json['thinkingConfig'] as Map<String, dynamic>),
      mediaResolution: $enumDecodeNullable(
          _$MediaResolutionEnumMap, json['mediaResolution']),
    );

Map<String, dynamic> _$GenerationConfigToJson(_GenerationConfig instance) =>
    <String, dynamic>{
      'stopSequences': instance.stopSequences,
      'responseMimeType': instance.responseMimeType,
      'responseSchema': instance.responseSchema,
      'responseModalities': instance.responseModalities
          ?.map((e) => _$ModalityEnumMap[e]!)
          .toList(),
      'candidateCount': instance.candidateCount,
      'maxOutputTokens': instance.maxOutputTokens,
      'temperature': instance.temperature,
      'topP': instance.topP,
      'topK': instance.topK,
      'seed': instance.seed,
      'presencePenalty': instance.presencePenalty,
      'frequencyPenalty': instance.frequencyPenalty,
      'responseLogprobs': instance.responseLogprobs,
      'logprobs': instance.logprobs,
      'enableEnhancedCivicAnswers': instance.enableEnhancedCivicAnswers,
      'speechConfig': instance.speechConfig,
      'thinkingConfig': instance.thinkingConfig,
      'mediaResolution': _$MediaResolutionEnumMap[instance.mediaResolution],
    };

const _$ModalityEnumMap = {
  Modality.MODALITY_UNSPECIFIED: 'MODALITY_UNSPECIFIED',
  Modality.TEXT: 'TEXT',
  Modality.IMAGE: 'IMAGE',
  Modality.VIDEO: 'VIDEO',
  Modality.AUDIO: 'AUDIO',
  Modality.DOCUMENT: 'DOCUMENT',
};

const _$MediaResolutionEnumMap = {
  MediaResolution.MEDIA_RESOLUTION_UNSPECIFIED: 'MEDIA_RESOLUTION_UNSPECIFIED',
  MediaResolution.MEDIA_RESOLUTION_LOW: 'MEDIA_RESOLUTION_LOW',
  MediaResolution.MEDIA_RESOLUTION_MEDIUM: 'MEDIA_RESOLUTION_MEDIUM',
  MediaResolution.MEDIA_RESOLUTION_HIGH: 'MEDIA_RESOLUTION_HIGH',
};
