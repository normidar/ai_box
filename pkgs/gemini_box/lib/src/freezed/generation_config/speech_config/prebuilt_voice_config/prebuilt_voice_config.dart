import 'package:freezed_annotation/freezed_annotation.dart';

part 'prebuilt_voice_config.freezed.dart';
part 'prebuilt_voice_config.g.dart';

@freezed
abstract class PrebuiltVoiceConfig with _$PrebuiltVoiceConfig {
  factory PrebuiltVoiceConfig({
    required String voiceName,
  }) = _PrebuiltVoiceConfig;

  factory PrebuiltVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$PrebuiltVoiceConfigFromJson(json);
  const PrebuiltVoiceConfig._();
}
