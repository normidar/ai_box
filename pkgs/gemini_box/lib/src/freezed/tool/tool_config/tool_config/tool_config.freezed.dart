// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tool_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToolConfig {
  FunctionCallingConfig? get functionCallingConfig;

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToolConfigCopyWith<ToolConfig> get copyWith =>
      _$ToolConfigCopyWithImpl<ToolConfig>(this as ToolConfig, _$identity);

  /// Serializes this ToolConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToolConfig &&
            (identical(other.functionCallingConfig, functionCallingConfig) ||
                other.functionCallingConfig == functionCallingConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, functionCallingConfig);

  @override
  String toString() {
    return 'ToolConfig(functionCallingConfig: $functionCallingConfig)';
  }
}

/// @nodoc
abstract mixin class $ToolConfigCopyWith<$Res> {
  factory $ToolConfigCopyWith(
          ToolConfig value, $Res Function(ToolConfig) _then) =
      _$ToolConfigCopyWithImpl;
  @useResult
  $Res call({FunctionCallingConfig? functionCallingConfig});

  $FunctionCallingConfigCopyWith<$Res>? get functionCallingConfig;
}

/// @nodoc
class _$ToolConfigCopyWithImpl<$Res> implements $ToolConfigCopyWith<$Res> {
  _$ToolConfigCopyWithImpl(this._self, this._then);

  final ToolConfig _self;
  final $Res Function(ToolConfig) _then;

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionCallingConfig = freezed,
  }) {
    return _then(_self.copyWith(
      functionCallingConfig: freezed == functionCallingConfig
          ? _self.functionCallingConfig
          : functionCallingConfig // ignore: cast_nullable_to_non_nullable
              as FunctionCallingConfig?,
    ));
  }

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionCallingConfigCopyWith<$Res>? get functionCallingConfig {
    if (_self.functionCallingConfig == null) {
      return null;
    }

    return $FunctionCallingConfigCopyWith<$Res>(_self.functionCallingConfig!,
        (value) {
      return _then(_self.copyWith(functionCallingConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ToolConfig extends ToolConfig {
  _ToolConfig({this.functionCallingConfig}) : super._();
  factory _ToolConfig.fromJson(Map<String, dynamic> json) =>
      _$ToolConfigFromJson(json);

  @override
  final FunctionCallingConfig? functionCallingConfig;

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToolConfigCopyWith<_ToolConfig> get copyWith =>
      __$ToolConfigCopyWithImpl<_ToolConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ToolConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToolConfig &&
            (identical(other.functionCallingConfig, functionCallingConfig) ||
                other.functionCallingConfig == functionCallingConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, functionCallingConfig);

  @override
  String toString() {
    return 'ToolConfig(functionCallingConfig: $functionCallingConfig)';
  }
}

/// @nodoc
abstract mixin class _$ToolConfigCopyWith<$Res>
    implements $ToolConfigCopyWith<$Res> {
  factory _$ToolConfigCopyWith(
          _ToolConfig value, $Res Function(_ToolConfig) _then) =
      __$ToolConfigCopyWithImpl;
  @override
  @useResult
  $Res call({FunctionCallingConfig? functionCallingConfig});

  @override
  $FunctionCallingConfigCopyWith<$Res>? get functionCallingConfig;
}

/// @nodoc
class __$ToolConfigCopyWithImpl<$Res> implements _$ToolConfigCopyWith<$Res> {
  __$ToolConfigCopyWithImpl(this._self, this._then);

  final _ToolConfig _self;
  final $Res Function(_ToolConfig) _then;

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? functionCallingConfig = freezed,
  }) {
    return _then(_ToolConfig(
      functionCallingConfig: freezed == functionCallingConfig
          ? _self.functionCallingConfig
          : functionCallingConfig // ignore: cast_nullable_to_non_nullable
              as FunctionCallingConfig?,
    ));
  }

  /// Create a copy of ToolConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionCallingConfigCopyWith<$Res>? get functionCallingConfig {
    if (_self.functionCallingConfig == null) {
      return null;
    }

    return $FunctionCallingConfigCopyWith<$Res>(_self.functionCallingConfig!,
        (value) {
      return _then(_self.copyWith(functionCallingConfig: value));
    });
  }
}

// dart format on
