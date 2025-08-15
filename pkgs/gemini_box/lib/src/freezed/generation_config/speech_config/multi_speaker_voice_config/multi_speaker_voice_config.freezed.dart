// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_speaker_voice_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultiSpeakerVoiceConfig {
  List<SpeakerVoiceConfig> get speakerVoiceConfigs;

  /// Create a copy of MultiSpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiSpeakerVoiceConfigCopyWith<MultiSpeakerVoiceConfig> get copyWith =>
      _$MultiSpeakerVoiceConfigCopyWithImpl<MultiSpeakerVoiceConfig>(
          this as MultiSpeakerVoiceConfig, _$identity);

  /// Serializes this MultiSpeakerVoiceConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiSpeakerVoiceConfig &&
            const DeepCollectionEquality()
                .equals(other.speakerVoiceConfigs, speakerVoiceConfigs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(speakerVoiceConfigs));

  @override
  String toString() {
    return 'MultiSpeakerVoiceConfig(speakerVoiceConfigs: $speakerVoiceConfigs)';
  }
}

/// @nodoc
abstract mixin class $MultiSpeakerVoiceConfigCopyWith<$Res> {
  factory $MultiSpeakerVoiceConfigCopyWith(MultiSpeakerVoiceConfig value,
          $Res Function(MultiSpeakerVoiceConfig) _then) =
      _$MultiSpeakerVoiceConfigCopyWithImpl;
  @useResult
  $Res call({List<SpeakerVoiceConfig> speakerVoiceConfigs});
}

/// @nodoc
class _$MultiSpeakerVoiceConfigCopyWithImpl<$Res>
    implements $MultiSpeakerVoiceConfigCopyWith<$Res> {
  _$MultiSpeakerVoiceConfigCopyWithImpl(this._self, this._then);

  final MultiSpeakerVoiceConfig _self;
  final $Res Function(MultiSpeakerVoiceConfig) _then;

  /// Create a copy of MultiSpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speakerVoiceConfigs = null,
  }) {
    return _then(_self.copyWith(
      speakerVoiceConfigs: null == speakerVoiceConfigs
          ? _self.speakerVoiceConfigs
          : speakerVoiceConfigs // ignore: cast_nullable_to_non_nullable
              as List<SpeakerVoiceConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MultiSpeakerVoiceConfig extends MultiSpeakerVoiceConfig {
  _MultiSpeakerVoiceConfig(
      {required final List<SpeakerVoiceConfig> speakerVoiceConfigs})
      : _speakerVoiceConfigs = speakerVoiceConfigs,
        super._();
  factory _MultiSpeakerVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$MultiSpeakerVoiceConfigFromJson(json);

  final List<SpeakerVoiceConfig> _speakerVoiceConfigs;
  @override
  List<SpeakerVoiceConfig> get speakerVoiceConfigs {
    if (_speakerVoiceConfigs is EqualUnmodifiableListView)
      return _speakerVoiceConfigs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakerVoiceConfigs);
  }

  /// Create a copy of MultiSpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultiSpeakerVoiceConfigCopyWith<_MultiSpeakerVoiceConfig> get copyWith =>
      __$MultiSpeakerVoiceConfigCopyWithImpl<_MultiSpeakerVoiceConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiSpeakerVoiceConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiSpeakerVoiceConfig &&
            const DeepCollectionEquality()
                .equals(other._speakerVoiceConfigs, _speakerVoiceConfigs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_speakerVoiceConfigs));

  @override
  String toString() {
    return 'MultiSpeakerVoiceConfig(speakerVoiceConfigs: $speakerVoiceConfigs)';
  }
}

/// @nodoc
abstract mixin class _$MultiSpeakerVoiceConfigCopyWith<$Res>
    implements $MultiSpeakerVoiceConfigCopyWith<$Res> {
  factory _$MultiSpeakerVoiceConfigCopyWith(_MultiSpeakerVoiceConfig value,
          $Res Function(_MultiSpeakerVoiceConfig) _then) =
      __$MultiSpeakerVoiceConfigCopyWithImpl;
  @override
  @useResult
  $Res call({List<SpeakerVoiceConfig> speakerVoiceConfigs});
}

/// @nodoc
class __$MultiSpeakerVoiceConfigCopyWithImpl<$Res>
    implements _$MultiSpeakerVoiceConfigCopyWith<$Res> {
  __$MultiSpeakerVoiceConfigCopyWithImpl(this._self, this._then);

  final _MultiSpeakerVoiceConfig _self;
  final $Res Function(_MultiSpeakerVoiceConfig) _then;

  /// Create a copy of MultiSpeakerVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? speakerVoiceConfigs = null,
  }) {
    return _then(_MultiSpeakerVoiceConfig(
      speakerVoiceConfigs: null == speakerVoiceConfigs
          ? _self._speakerVoiceConfigs
          : speakerVoiceConfigs // ignore: cast_nullable_to_non_nullable
              as List<SpeakerVoiceConfig>,
    ));
  }
}

// dart format on
