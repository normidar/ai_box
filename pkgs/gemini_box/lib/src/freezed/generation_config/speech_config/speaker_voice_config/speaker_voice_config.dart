import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/voice_config/voice_config.dart';

part 'speaker_voice_config.freezed.dart';
part 'speaker_voice_config.g.dart';

@freezed
abstract class SpeakerVoiceConfig with _$SpeakerVoiceConfig {
  factory SpeakerVoiceConfig({
    required String speaker,
    required VoiceConfig voiceConfig,
  }) = _SpeakerVoiceConfig;

  factory SpeakerVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$SpeakerVoiceConfigFromJson(json);
  const SpeakerVoiceConfig._();
}
