// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tool {
  List<FunctionDeclaration>? get functionDeclarations;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToolCopyWith<Tool> get copyWith =>
      _$ToolCopyWithImpl<Tool>(this as Tool, _$identity);

  /// Serializes this Tool to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tool &&
            const DeepCollectionEquality()
                .equals(other.functionDeclarations, functionDeclarations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(functionDeclarations));

  @override
  String toString() {
    return 'Tool(functionDeclarations: $functionDeclarations)';
  }
}

/// @nodoc
abstract mixin class $ToolCopyWith<$Res> {
  factory $ToolCopyWith(Tool value, $Res Function(Tool) _then) =
      _$ToolCopyWithImpl;
  @useResult
  $Res call({List<FunctionDeclaration>? functionDeclarations});
}

/// @nodoc
class _$ToolCopyWithImpl<$Res> implements $ToolCopyWith<$Res> {
  _$ToolCopyWithImpl(this._self, this._then);

  final Tool _self;
  final $Res Function(Tool) _then;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionDeclarations = freezed,
  }) {
    return _then(_self.copyWith(
      functionDeclarations: freezed == functionDeclarations
          ? _self.functionDeclarations
          : functionDeclarations // ignore: cast_nullable_to_non_nullable
              as List<FunctionDeclaration>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Tool extends Tool {
  _Tool({final List<FunctionDeclaration>? functionDeclarations})
      : _functionDeclarations = functionDeclarations,
        super._();
  factory _Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);

  final List<FunctionDeclaration>? _functionDeclarations;
  @override
  List<FunctionDeclaration>? get functionDeclarations {
    final value = _functionDeclarations;
    if (value == null) return null;
    if (_functionDeclarations is EqualUnmodifiableListView)
      return _functionDeclarations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToolCopyWith<_Tool> get copyWith =>
      __$ToolCopyWithImpl<_Tool>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ToolToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tool &&
            const DeepCollectionEquality()
                .equals(other._functionDeclarations, _functionDeclarations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_functionDeclarations));

  @override
  String toString() {
    return 'Tool(functionDeclarations: $functionDeclarations)';
  }
}

/// @nodoc
abstract mixin class _$ToolCopyWith<$Res> implements $ToolCopyWith<$Res> {
  factory _$ToolCopyWith(_Tool value, $Res Function(_Tool) _then) =
      __$ToolCopyWithImpl;
  @override
  @useResult
  $Res call({List<FunctionDeclaration>? functionDeclarations});
}

/// @nodoc
class __$ToolCopyWithImpl<$Res> implements _$ToolCopyWith<$Res> {
  __$ToolCopyWithImpl(this._self, this._then);

  final _Tool _self;
  final $Res Function(_Tool) _then;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? functionDeclarations = freezed,
  }) {
    return _then(_Tool(
      functionDeclarations: freezed == functionDeclarations
          ? _self._functionDeclarations
          : functionDeclarations // ignore: cast_nullable_to_non_nullable
              as List<FunctionDeclaration>?,
    ));
  }
}

// dart format on
