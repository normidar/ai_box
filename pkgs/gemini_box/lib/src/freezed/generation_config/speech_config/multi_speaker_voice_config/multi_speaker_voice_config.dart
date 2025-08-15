import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/speaker_voice_config/speaker_voice_config.dart';

part 'multi_speaker_voice_config.freezed.dart';
part 'multi_speaker_voice_config.g.dart';

@freezed
abstract class MultiSpeakerVoiceConfig with _$MultiSpeakerVoiceConfig {
  factory MultiSpeakerVoiceConfig({
    required List<SpeakerVoiceConfig> speakerVoiceConfigs,
  }) = _MultiSpeakerVoiceConfig;

  factory MultiSpeakerVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$MultiSpeakerVoiceConfigFromJson(json);
  const MultiSpeakerVoiceConfig._();
}
