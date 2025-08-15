// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prebuilt_voice_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrebuiltVoiceConfig {
  String get voiceName;

  /// Create a copy of PrebuiltVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrebuiltVoiceConfigCopyWith<PrebuiltVoiceConfig> get copyWith =>
      _$PrebuiltVoiceConfigCopyWithImpl<PrebuiltVoiceConfig>(
          this as PrebuiltVoiceConfig, _$identity);

  /// Serializes this PrebuiltVoiceConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrebuiltVoiceConfig &&
            (identical(other.voiceName, voiceName) ||
                other.voiceName == voiceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, voiceName);

  @override
  String toString() {
    return 'PrebuiltVoiceConfig(voiceName: $voiceName)';
  }
}

/// @nodoc
abstract mixin class $PrebuiltVoiceConfigCopyWith<$Res> {
  factory $PrebuiltVoiceConfigCopyWith(
          PrebuiltVoiceConfig value, $Res Function(PrebuiltVoiceConfig) _then) =
      _$PrebuiltVoiceConfigCopyWithImpl;
  @useResult
  $Res call({String voiceName});
}

/// @nodoc
class _$PrebuiltVoiceConfigCopyWithImpl<$Res>
    implements $PrebuiltVoiceConfigCopyWith<$Res> {
  _$PrebuiltVoiceConfigCopyWithImpl(this._self, this._then);

  final PrebuiltVoiceConfig _self;
  final $Res Function(PrebuiltVoiceConfig) _then;

  /// Create a copy of PrebuiltVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voiceName = null,
  }) {
    return _then(_self.copyWith(
      voiceName: null == voiceName
          ? _self.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PrebuiltVoiceConfig extends PrebuiltVoiceConfig {
  _PrebuiltVoiceConfig({required this.voiceName}) : super._();
  factory _PrebuiltVoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$PrebuiltVoiceConfigFromJson(json);

  @override
  final String voiceName;

  /// Create a copy of PrebuiltVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrebuiltVoiceConfigCopyWith<_PrebuiltVoiceConfig> get copyWith =>
      __$PrebuiltVoiceConfigCopyWithImpl<_PrebuiltVoiceConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PrebuiltVoiceConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrebuiltVoiceConfig &&
            (identical(other.voiceName, voiceName) ||
                other.voiceName == voiceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, voiceName);

  @override
  String toString() {
    return 'PrebuiltVoiceConfig(voiceName: $voiceName)';
  }
}

/// @nodoc
abstract mixin class _$PrebuiltVoiceConfigCopyWith<$Res>
    implements $PrebuiltVoiceConfigCopyWith<$Res> {
  factory _$PrebuiltVoiceConfigCopyWith(_PrebuiltVoiceConfig value,
          $Res Function(_PrebuiltVoiceConfig) _then) =
      __$PrebuiltVoiceConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String voiceName});
}

/// @nodoc
class __$PrebuiltVoiceConfigCopyWithImpl<$Res>
    implements _$PrebuiltVoiceConfigCopyWith<$Res> {
  __$PrebuiltVoiceConfigCopyWithImpl(this._self, this._then);

  final _PrebuiltVoiceConfig _self;
  final $Res Function(_PrebuiltVoiceConfig) _then;

  /// Create a copy of PrebuiltVoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voiceName = null,
  }) {
    return _then(_PrebuiltVoiceConfig(
      voiceName: null == voiceName
          ? _self.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
