// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaker_voice_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpeakerVoiceConfig {
  String get speaker;
  VoiceConfig get voiceConfig;

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpeakerVoiceConfigCopyWith<SpeakerVoiceConfig> get copyWith =>
      _$SpeakerVoiceConfigCopyWithImpl<SpeakerVoiceConfig>(
          this as SpeakerVoiceConfig, _$identity);

  /// Serializes this SpeakerVoiceConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpeakerVoiceConfig &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.voiceConfig, voiceConfig) ||
                other.voiceConfig == voiceConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speaker, voiceConfig);

  @override
  String toString() {
    return 'SpeakerVoiceConfig(speaker: $speaker, voiceConfig: $voiceConfig)';
  }
}

/// @nodoc
abstract mixin class $SpeakerVoiceConfigCopyWith<$Res> {
  factory $SpeakerVoiceConfigCopyWith(
          SpeakerVoiceConfig value, $Res Function(SpeakerVoiceConfig) _then) =
      _$SpeakerVoiceConfigCopyWithImpl;
  @useResult
  $Res call({String speaker, VoiceConfig voiceConfig});

  $VoiceConfigCopyWith<$Res> get voiceConfig;
}

/// @nodoc
class _$SpeakerVoiceConfigCopyWithImpl<$Res>
    implements $SpeakerVoiceConfigCopyWith<$Res> {
  _$SpeakerVoiceConfigCopyWithImpl(this._self, this._then);

  final SpeakerVoiceConfig _self;
  final $Res Function(SpeakerVoiceConfig) _then;

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker = null,
    Object? voiceConfig = null,
  }) {
    return _then(_self.copyWith(
      speaker: null == speaker
          ? _self.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      voiceConfig: null == voiceConfig
          ? _self.voiceConfig
          : voiceConfig // ignore: cast_nullable_to_non_nullable
              as VoiceConfig,
    ));
  }

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceConfigCopyWith<$Res> get voiceConfig {
    return $VoiceConfigCopyWith<$Res>(_self.voiceConfig, (value) {
      return _then(_self.copyWith(voiceConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SpeakerVoiceConfig extends SpeakerVoiceConfig {
  _SpeakerVoiceConfig({required this.speaker, required this.voiceConfig})
      : super._();
  factory _SpeakerVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$SpeakerVoiceConfigFromJson(json);

  @override
  final String speaker;
  @override
  final VoiceConfig voiceConfig;

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpeakerVoiceConfigCopyWith<_SpeakerVoiceConfig> get copyWith =>
      __$SpeakerVoiceConfigCopyWithImpl<_SpeakerVoiceConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpeakerVoiceConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpeakerVoiceConfig &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.voiceConfig, voiceConfig) ||
                other.voiceConfig == voiceConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speaker, voiceConfig);

  @override
  String toString() {
    return 'SpeakerVoiceConfig(speaker: $speaker, voiceConfig: $voiceConfig)';
  }
}

/// @nodoc
abstract mixin class _$SpeakerVoiceConfigCopyWith<$Res>
    implements $SpeakerVoiceConfigCopyWith<$Res> {
  factory _$SpeakerVoiceConfigCopyWith(
          _SpeakerVoiceConfig value, $Res Function(_SpeakerVoiceConfig) _then) =
      __$SpeakerVoiceConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String speaker, VoiceConfig voiceConfig});

  @override
  $VoiceConfigCopyWith<$Res> get voiceConfig;
}

/// @nodoc
class __$SpeakerVoiceConfigCopyWithImpl<$Res>
    implements _$SpeakerVoiceConfigCopyWith<$Res> {
  __$SpeakerVoiceConfigCopyWithImpl(this._self, this._then);

  final _SpeakerVoiceConfig _self;
  final $Res Function(_SpeakerVoiceConfig) _then;

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? speaker = null,
    Object? voiceConfig = null,
  }) {
    return _then(_SpeakerVoiceConfig(
      speaker: null == speaker
          ? _self.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      voiceConfig: null == voiceConfig
          ? _self.voiceConfig
          : voiceConfig // ignore: cast_nullable_to_non_nullable
              as VoiceConfig,
    ));
  }

  /// Create a copy of SpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceConfigCopyWith<$Res> get voiceConfig {
    return $VoiceConfigCopyWith<$Res>(_self.voiceConfig, (value) {
      return _then(_self.copyWith(voiceConfig: value));
    });
  }
}

// dart format on
