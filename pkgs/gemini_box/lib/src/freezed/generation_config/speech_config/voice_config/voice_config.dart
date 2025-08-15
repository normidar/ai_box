import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/generation_config/speech_config/prebuilt_voice_config/prebuilt_voice_config.dart';

part 'voice_config.freezed.dart';
part 'voice_config.g.dart';

@freezed
abstract class VoiceConfig with _$VoiceConfig {
  factory VoiceConfig({
    required PrebuiltVoiceConfig prebuiltVoiceConfig,
  }) = _VoiceConfig;

  factory VoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$VoiceConfigFromJson(json);
  const VoiceConfig._();
}
