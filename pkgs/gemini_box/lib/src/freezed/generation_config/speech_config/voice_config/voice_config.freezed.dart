// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoiceConfig {
  PrebuiltVoiceConfig get prebuiltVoiceConfig;

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VoiceConfigCopyWith<VoiceConfig> get copyWith =>
      _$VoiceConfigCopyWithImpl<VoiceConfig>(this as VoiceConfig, _$identity);

  /// Serializes this VoiceConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VoiceConfig &&
            (identical(other.prebuiltVoiceConfig, prebuiltVoiceConfig) ||
                other.prebuiltVoiceConfig == prebuiltVoiceConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prebuiltVoiceConfig);

  @override
  String toString() {
    return 'VoiceConfig(prebuiltVoiceConfig: $prebuiltVoiceConfig)';
  }
}

/// @nodoc
abstract mixin class $VoiceConfigCopyWith<$Res> {
  factory $VoiceConfigCopyWith(
          VoiceConfig value, $Res Function(VoiceConfig) _then) =
      _$VoiceConfigCopyWithImpl;
  @useResult
  $Res call({PrebuiltVoiceConfig prebuiltVoiceConfig});

  $PrebuiltVoiceConfigCopyWith<$Res> get prebuiltVoiceConfig;
}

/// @nodoc
class _$VoiceConfigCopyWithImpl<$Res> implements $VoiceConfigCopyWith<$Res> {
  _$VoiceConfigCopyWithImpl(this._self, this._then);

  final VoiceConfig _self;
  final $Res Function(VoiceConfig) _then;

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prebuiltVoiceConfig = null,
  }) {
    return _then(_self.copyWith(
      prebuiltVoiceConfig: null == prebuiltVoiceConfig
          ? _self.prebuiltVoiceConfig
          : prebuiltVoiceConfig // ignore: cast_nullable_to_non_nullable
              as PrebuiltVoiceConfig,
    ));
  }

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrebuiltVoiceConfigCopyWith<$Res> get prebuiltVoiceConfig {
    return $PrebuiltVoiceConfigCopyWith<$Res>(_self.prebuiltVoiceConfig,
        (value) {
      return _then(_self.copyWith(prebuiltVoiceConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _VoiceConfig extends VoiceConfig {
  _VoiceConfig({required this.prebuiltVoiceConfig}) : super._();
  factory _VoiceConfig.fromJson(Map<String, dynamic> json) =>
      _$VoiceConfigFromJson(json);

  @override
  final PrebuiltVoiceConfig prebuiltVoiceConfig;

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VoiceConfigCopyWith<_VoiceConfig> get copyWith =>
      __$VoiceConfigCopyWithImpl<_VoiceConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VoiceConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VoiceConfig &&
            (identical(other.prebuiltVoiceConfig, prebuiltVoiceConfig) ||
                other.prebuiltVoiceConfig == prebuiltVoiceConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prebuiltVoiceConfig);

  @override
  String toString() {
    return 'VoiceConfig(prebuiltVoiceConfig: $prebuiltVoiceConfig)';
  }
}

/// @nodoc
abstract mixin class _$VoiceConfigCopyWith<$Res>
    implements $VoiceConfigCopyWith<$Res> {
  factory _$VoiceConfigCopyWith(
          _VoiceConfig value, $Res Function(_VoiceConfig) _then) =
      __$VoiceConfigCopyWithImpl;
  @override
  @useResult
  $Res call({PrebuiltVoiceConfig prebuiltVoiceConfig});

  @override
  $PrebuiltVoiceConfigCopyWith<$Res> get prebuiltVoiceConfig;
}

/// @nodoc
class __$VoiceConfigCopyWithImpl<$Res> implements _$VoiceConfigCopyWith<$Res> {
  __$VoiceConfigCopyWithImpl(this._self, this._then);

  final _VoiceConfig _self;
  final $Res Function(_VoiceConfig) _then;

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prebuiltVoiceConfig = null,
  }) {
    return _then(_VoiceConfig(
      prebuiltVoiceConfig: null == prebuiltVoiceConfig
          ? _self.prebuiltVoiceConfig
          : prebuiltVoiceConfig // ignore: cast_nullable_to_non_nullable
              as PrebuiltVoiceConfig,
    ));
  }

  /// Create a copy of VoiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrebuiltVoiceConfigCopyWith<$Res> get prebuiltVoiceConfig {
    return $PrebuiltVoiceConfigCopyWith<$Res>(_self.prebuiltVoiceConfig,
        (value) {
      return _then(_self.copyWith(prebuiltVoiceConfig: value));
    });
  }
}

// dart format on
