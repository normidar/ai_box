// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_calling_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FunctionCallingConfig {
  Mode? get mode;
  List<String>? get allowedFunctionNames;

  /// Create a copy of FunctionCallingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FunctionCallingConfigCopyWith<FunctionCallingConfig> get copyWith =>
      _$FunctionCallingConfigCopyWithImpl<FunctionCallingConfig>(
          this as FunctionCallingConfig, _$identity);

  /// Serializes this FunctionCallingConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FunctionCallingConfig &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality()
                .equals(other.allowedFunctionNames, allowedFunctionNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode,
      const DeepCollectionEquality().hash(allowedFunctionNames));

  @override
  String toString() {
    return 'FunctionCallingConfig(mode: $mode, allowedFunctionNames: $allowedFunctionNames)';
  }
}

/// @nodoc
abstract mixin class $FunctionCallingConfigCopyWith<$Res> {
  factory $FunctionCallingConfigCopyWith(FunctionCallingConfig value,
          $Res Function(FunctionCallingConfig) _then) =
      _$FunctionCallingConfigCopyWithImpl;
  @useResult
  $Res call({Mode? mode, List<String>? allowedFunctionNames});
}

/// @nodoc
class _$FunctionCallingConfigCopyWithImpl<$Res>
    implements $FunctionCallingConfigCopyWith<$Res> {
  _$FunctionCallingConfigCopyWithImpl(this._self, this._then);

  final FunctionCallingConfig _self;
  final $Res Function(FunctionCallingConfig) _then;

  /// Create a copy of FunctionCallingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? allowedFunctionNames = freezed,
  }) {
    return _then(_self.copyWith(
      mode: freezed == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode?,
      allowedFunctionNames: freezed == allowedFunctionNames
          ? _self.allowedFunctionNames
          : allowedFunctionNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FunctionCallingConfig extends FunctionCallingConfig {
  _FunctionCallingConfig({this.mode, final List<String>? allowedFunctionNames})
      : _allowedFunctionNames = allowedFunctionNames,
        super._();
  factory _FunctionCallingConfig.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallingConfigFromJson(json);

  @override
  final Mode? mode;
  final List<String>? _allowedFunctionNames;
  @override
  List<String>? get allowedFunctionNames {
    final value = _allowedFunctionNames;
    if (value == null) return null;
    if (_allowedFunctionNames is EqualUnmodifiableListView)
      return _allowedFunctionNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of FunctionCallingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FunctionCallingConfigCopyWith<_FunctionCallingConfig> get copyWith =>
      __$FunctionCallingConfigCopyWithImpl<_FunctionCallingConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FunctionCallingConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunctionCallingConfig &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality()
                .equals(other._allowedFunctionNames, _allowedFunctionNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode,
      const DeepCollectionEquality().hash(_allowedFunctionNames));

  @override
  String toString() {
    return 'FunctionCallingConfig(mode: $mode, allowedFunctionNames: $allowedFunctionNames)';
  }
}

/// @nodoc
abstract mixin class _$FunctionCallingConfigCopyWith<$Res>
    implements $FunctionCallingConfigCopyWith<$Res> {
  factory _$FunctionCallingConfigCopyWith(_FunctionCallingConfig value,
          $Res Function(_FunctionCallingConfig) _then) =
      __$FunctionCallingConfigCopyWithImpl;
  @override
  @useResult
  $Res call({Mode? mode, List<String>? allowedFunctionNames});
}

/// @nodoc
class __$FunctionCallingConfigCopyWithImpl<$Res>
    implements _$FunctionCallingConfigCopyWith<$Res> {
  __$FunctionCallingConfigCopyWithImpl(this._self, this._then);

  final _FunctionCallingConfig _self;
  final $Res Function(_FunctionCallingConfig) _then;

  /// Create a copy of FunctionCallingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = freezed,
    Object? allowedFunctionNames = freezed,
  }) {
    return _then(_FunctionCallingConfig(
      mode: freezed == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode?,
      allowedFunctionNames: freezed == allowedFunctionNames
          ? _self._allowedFunctionNames
          : allowedFunctionNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
