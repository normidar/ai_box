// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speech_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeechConfig _$SpeechConfigFromJson(Map<String, dynamic> json) =>
    _SpeechConfig(
      voiceConfig:
          VoiceConfig.fromJson(json['voiceConfig'] as Map<String, dynamic>),
      multiSpeakerVoiceConfig: json['multiSpeakerVoiceConfig'] == null
          ? null
          : MultiSpeakerVoiceConfig.fromJson(
              json['multiSpeakerVoiceConfig'] as Map<String, dynamic>),
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$SpeechConfigToJson(_SpeechConfig instance) =>
    <String, dynamic>{
      'voiceConfig': instance.voiceConfig,
      'multiSpeakerVoiceConfig': instance.multiSpeakerVoiceConfig,
      'languageCode': instance.languageCode,
    };
