// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModalityTokenCount _$ModalityTokenCountFromJson(Map<String, dynamic> json) =>
    _ModalityTokenCount(
      modality: $enumDecode(_$ModalityEnumMap, json['modality']),
      tokenCount: (json['tokenCount'] as num).toInt(),
    );

Map<String, dynamic> _$ModalityTokenCountToJson(_ModalityTokenCount instance) =>
    <String, dynamic>{
      'modality': _$ModalityEnumMap[instance.modality]!,
      'tokenCount': instance.tokenCount,
    };

const _$ModalityEnumMap = {
  Modality.MODALITY_UNSPECIFIED: 'MODALITY_UNSPECIFIED',
  Modality.TEXT: 'TEXT',
  Modality.IMAGE: 'IMAGE',
  Modality.VIDEO: 'VIDEO',
  Modality.AUDIO: 'AUDIO',
  Modality.DOCUMENT: 'DOCUMENT',
};

_UsageMetadata _$UsageMetadataFromJson(Map<String, dynamic> json) =>
    _UsageMetadata(
      promptTokenCount: (json['promptTokenCount'] as num?)?.toInt(),
      cachedContentTokenCount:
          (json['cachedContentTokenCount'] as num?)?.toInt(),
      candidatesTokenCount: (json['candidatesTokenCount'] as num?)?.toInt(),
      toolUsePromptTokenCount:
          (json['toolUsePromptTokenCount'] as num?)?.toInt(),
      thoughtsTokenCount: (json['thoughtsTokenCount'] as num?)?.toInt(),
      totalTokenCount: (json['totalTokenCount'] as num?)?.toInt(),
      promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>?)
          ?.map((e) => ModalityTokenCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      cacheTokensDetails: (json['cacheTokensDetails'] as List<dynamic>?)
          ?.map((e) => ModalityTokenCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidatesTokensDetails: (json['candidatesTokensDetails']
              as List<dynamic>?)
          ?.map((e) => ModalityTokenCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      toolUsePromptTokensDetails: (json['toolUsePromptTokensDetails']
              as List<dynamic>?)
          ?.map((e) => ModalityTokenCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsageMetadataToJson(_UsageMetadata instance) =>
    <String, dynamic>{
      'promptTokenCount': instance.promptTokenCount,
      'cachedContentTokenCount': instance.cachedContentTokenCount,
      'candidatesTokenCount': instance.candidatesTokenCount,
      'toolUsePromptTokenCount': instance.toolUsePromptTokenCount,
      'thoughtsTokenCount': instance.thoughtsTokenCount,
      'totalTokenCount': instance.totalTokenCount,
      'promptTokensDetails': instance.promptTokensDetails,
      'cacheTokensDetails': instance.cacheTokensDetails,
      'candidatesTokensDetails': instance.candidatesTokensDetails,
      'toolUsePromptTokensDetails': instance.toolUsePromptTokensDetails,
    };
