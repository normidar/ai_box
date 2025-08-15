// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker_voice_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeakerVoiceConfig _$SpeakerVoiceConfigFromJson(Map<String, dynamic> json) =>
    _SpeakerVoiceConfig(
      speaker: json['speaker'] as String,
      voiceConfig:
          VoiceConfig.fromJson(json['voiceConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpeakerVoiceConfigToJson(_SpeakerVoiceConfig instance) =>
    <String, dynamic>{
      'speaker': instance.speaker,
      'voiceConfig': instance.voiceConfig,
    };
