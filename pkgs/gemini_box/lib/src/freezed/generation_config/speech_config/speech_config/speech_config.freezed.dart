// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpeechConfig {
  VoiceConfig get voiceConfig;
  MultiSpeakerVoiceConfig? get multiSpeakerVoiceConfig;
  String? get languageCode;

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpeechConfigCopyWith<SpeechConfig> get copyWith =>
      _$SpeechConfigCopyWithImpl<SpeechConfig>(
          this as SpeechConfig, _$identity);

  /// Serializes this SpeechConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpeechConfig &&
            (identical(other.voiceConfig, voiceConfig) ||
                other.voiceConfig == voiceConfig) &&
            (identical(
                    other.multiSpeakerVoiceConfig, multiSpeakerVoiceConfig) ||
                other.multiSpeakerVoiceConfig == multiSpeakerVoiceConfig) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, voiceConfig, multiSpeakerVoiceConfig, languageCode);

  @override
  String toString() {
    return 'SpeechConfig(voiceConfig: $voiceConfig, multiSpeakerVoiceConfig: $multiSpeakerVoiceConfig, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class $SpeechConfigCopyWith<$Res> {
  factory $SpeechConfigCopyWith(
          SpeechConfig value, $Res Function(SpeechConfig) _then) =
      _$SpeechConfigCopyWithImpl;
  @useResult
  $Res call(
      {VoiceConfig voiceConfig,
      MultiSpeakerVoiceConfig? multiSpeakerVoiceConfig,
      String? languageCode});

  $VoiceConfigCopyWith<$Res> get voiceConfig;
  $MultiSpeakerVoiceConfigCopyWith<$Res>? get multiSpeakerVoiceConfig;
}

/// @nodoc
class _$SpeechConfigCopyWithImpl<$Res> implements $SpeechConfigCopyWith<$Res> {
  _$SpeechConfigCopyWithImpl(this._self, this._then);

  final SpeechConfig _self;
  final $Res Function(SpeechConfig) _then;

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voiceConfig = null,
    Object? multiSpeakerVoiceConfig = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_self.copyWith(
      voiceConfig: null == voiceConfig
          ? _self.voiceConfig
          : voiceConfig // ignore: cast_nullable_to_non_nullable
              as VoiceConfig,
      multiSpeakerVoiceConfig: freezed == multiSpeakerVoiceConfig
          ? _self.multiSpeakerVoiceConfig
          : multiSpeakerVoiceConfig // ignore: cast_nullable_to_non_nullable
              as MultiSpeakerVoiceConfig?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceConfigCopyWith<$Res> get voiceConfig {
    return $VoiceConfigCopyWith<$Res>(_self.voiceConfig, (value) {
      return _then(_self.copyWith(voiceConfig: value));
    });
  }

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultiSpeakerVoiceConfigCopyWith<$Res>? get multiSpeakerVoiceConfig {
    if (_self.multiSpeakerVoiceConfig == null) {
      return null;
    }

    return $MultiSpeakerVoiceConfigCopyWith<$Res>(
        _self.multiSpeakerVoiceConfig!, (value) {
      return _then(_self.copyWith(multiSpeakerVoiceConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SpeechConfig extends SpeechConfig {
  _SpeechConfig(
      {required this.voiceConfig,
      this.multiSpeakerVoiceConfig,
      this.languageCode})
      : super._();
  factory _SpeechConfig.fromJson(Map<String, dynamic> json) =>
      _$SpeechConfigFromJson(json);

  @override
  final VoiceConfig voiceConfig;
  @override
  final MultiSpeakerVoiceConfig? multiSpeakerVoiceConfig;
  @override
  final String? languageCode;

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpeechConfigCopyWith<_SpeechConfig> get copyWith =>
      __$SpeechConfigCopyWithImpl<_SpeechConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpeechConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpeechConfig &&
            (identical(other.voiceConfig, voiceConfig) ||
                other.voiceConfig == voiceConfig) &&
            (identical(
                    other.multiSpeakerVoiceConfig, multiSpeakerVoiceConfig) ||
                other.multiSpeakerVoiceConfig == multiSpeakerVoiceConfig) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, voiceConfig, multiSpeakerVoiceConfig, languageCode);

  @override
  String toString() {
    return 'SpeechConfig(voiceConfig: $voiceConfig, multiSpeakerVoiceConfig: $multiSpeakerVoiceConfig, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class _$SpeechConfigCopyWith<$Res>
    implements $SpeechConfigCopyWith<$Res> {
  factory _$SpeechConfigCopyWith(
          _SpeechConfig value, $Res Function(_SpeechConfig) _then) =
      __$SpeechConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {VoiceConfig voiceConfig,
      MultiSpeakerVoiceConfig? multiSpeakerVoiceConfig,
      String? languageCode});

  @override
  $VoiceConfigCopyWith<$Res> get voiceConfig;
  @override
  $MultiSpeakerVoiceConfigCopyWith<$Res>? get multiSpeakerVoiceConfig;
}

/// @nodoc
class __$SpeechConfigCopyWithImpl<$Res>
    implements _$SpeechConfigCopyWith<$Res> {
  __$SpeechConfigCopyWithImpl(this._self, this._then);

  final _SpeechConfig _self;
  final $Res Function(_SpeechConfig) _then;

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voiceConfig = null,
    Object? multiSpeakerVoiceConfig = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_SpeechConfig(
      voiceConfig: null == voiceConfig
          ? _self.voiceConfig
          : voiceConfig // ignore: cast_nullable_to_non_nullable
              as VoiceConfig,
      multiSpeakerVoiceConfig: freezed == multiSpeakerVoiceConfig
          ? _self.multiSpeakerVoiceConfig
          : multiSpeakerVoiceConfig // ignore: cast_nullable_to_non_nullable
              as MultiSpeakerVoiceConfig?,
      languageCode: freezed == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceConfigCopyWith<$Res> get voiceConfig {
    return $VoiceConfigCopyWith<$Res>(_self.voiceConfig, (value) {
      return _then(_self.copyWith(voiceConfig: value));
    });
  }

  /// Create a copy of SpeechConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultiSpeakerVoiceConfigCopyWith<$Res>? get multiSpeakerVoiceConfig {
    if (_self.multiSpeakerVoiceConfig == null) {
      return null;
    }

    return $MultiSpeakerVoiceConfigCopyWith<$Res>(
        _self.multiSpeakerVoiceConfig!, (value) {
      return _then(_self.copyWith(multiSpeakerVoiceConfig: value));
    });
  }
}

// dart format on
