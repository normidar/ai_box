// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_speaker_voice_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultiSpeakerVoiceConfig _$MultiSpeakerVoiceConfigFromJson(
        Map<String, dynamic> json) =>
    _MultiSpeakerVoiceConfig(
      speakerVoiceConfigs: (json['speakerVoiceConfigs'] as List<dynamic>)
          .map((e) => SpeakerVoiceConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MultiSpeakerVoiceConfigToJson(
        _MultiSpeakerVoiceConfig instance) =>
    <String, dynamic>{
      'speakerVoiceConfigs': instance.speakerVoiceConfigs,
    };
