// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thinking_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThinkingConfig {
  bool get includeThoughts;
  int get thinkingBudget;

  /// Create a copy of ThinkingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThinkingConfigCopyWith<ThinkingConfig> get copyWith =>
      _$ThinkingConfigCopyWithImpl<ThinkingConfig>(
          this as ThinkingConfig, _$identity);

  /// Serializes this ThinkingConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThinkingConfig &&
            (identical(other.includeThoughts, includeThoughts) ||
                other.includeThoughts == includeThoughts) &&
            (identical(other.thinkingBudget, thinkingBudget) ||
                other.thinkingBudget == thinkingBudget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, includeThoughts, thinkingBudget);

  @override
  String toString() {
    return 'ThinkingConfig(includeThoughts: $includeThoughts, thinkingBudget: $thinkingBudget)';
  }
}

/// @nodoc
abstract mixin class $ThinkingConfigCopyWith<$Res> {
  factory $ThinkingConfigCopyWith(
          ThinkingConfig value, $Res Function(ThinkingConfig) _then) =
      _$ThinkingConfigCopyWithImpl;
  @useResult
  $Res call({bool includeThoughts, int thinkingBudget});
}

/// @nodoc
class _$ThinkingConfigCopyWithImpl<$Res>
    implements $ThinkingConfigCopyWith<$Res> {
  _$ThinkingConfigCopyWithImpl(this._self, this._then);

  final ThinkingConfig _self;
  final $Res Function(ThinkingConfig) _then;

  /// Create a copy of ThinkingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includeThoughts = null,
    Object? thinkingBudget = null,
  }) {
    return _then(_self.copyWith(
      includeThoughts: null == includeThoughts
          ? _self.includeThoughts
          : includeThoughts // ignore: cast_nullable_to_non_nullable
              as bool,
      thinkingBudget: null == thinkingBudget
          ? _self.thinkingBudget
          : thinkingBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ThinkingConfig extends ThinkingConfig {
  _ThinkingConfig({required this.includeThoughts, required this.thinkingBudget})
      : super._();
  factory _ThinkingConfig.fromJson(Map<String, dynamic> json) =>
      _$ThinkingConfigFromJson(json);

  @override
  final bool includeThoughts;
  @override
  final int thinkingBudget;

  /// Create a copy of ThinkingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThinkingConfigCopyWith<_ThinkingConfig> get copyWith =>
      __$ThinkingConfigCopyWithImpl<_ThinkingConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThinkingConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThinkingConfig &&
            (identical(other.includeThoughts, includeThoughts) ||
                other.includeThoughts == includeThoughts) &&
            (identical(other.thinkingBudget, thinkingBudget) ||
                other.thinkingBudget == thinkingBudget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, includeThoughts, thinkingBudget);

  @override
  String toString() {
    return 'ThinkingConfig(includeThoughts: $includeThoughts, thinkingBudget: $thinkingBudget)';
  }
}

/// @nodoc
abstract mixin class _$ThinkingConfigCopyWith<$Res>
    implements $ThinkingConfigCopyWith<$Res> {
  factory _$ThinkingConfigCopyWith(
          _ThinkingConfig value, $Res Function(_ThinkingConfig) _then) =
      __$ThinkingConfigCopyWithImpl;
  @override
  @useResult
  $Res call({bool includeThoughts, int thinkingBudget});
}

/// @nodoc
class __$ThinkingConfigCopyWithImpl<$Res>
    implements _$ThinkingConfigCopyWith<$Res> {
  __$ThinkingConfigCopyWithImpl(this._self, this._then);

  final _ThinkingConfig _self;
  final $Res Function(_ThinkingConfig) _then;

  /// Create a copy of ThinkingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? includeThoughts = null,
    Object? thinkingBudget = null,
  }) {
    return _then(_ThinkingConfig(
      includeThoughts: null == includeThoughts
          ? _self.includeThoughts
          : includeThoughts // ignore: cast_nullable_to_non_nullable
              as bool,
      thinkingBudget: null == thinkingBudget
          ? _self.thinkingBudget
          : thinkingBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
