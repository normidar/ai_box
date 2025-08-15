import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/multi_speaker_voice_config/multi_speaker_voice_config.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/voice_config/voice_config.dart';

part 'speech_config.freezed.dart';
part 'speech_config.g.dart';

/// Ref: https://ai.google.dev/api/generate-content#SpeechConfig
@freezed
abstract class SpeechConfig with _$SpeechConfig {
  factory SpeechConfig({
    required VoiceConfig voiceConfig,
    MultiSpeakerVoiceConfig? multiSpeakerVoiceConfig,
    String? languageCode,
  }) = _SpeechConfig;

  factory SpeechConfig.fromJson(Map<String, dynamic> json) =>
      _$SpeechConfigFromJson(json);
  const SpeechConfig._();
}
