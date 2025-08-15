// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_declaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FunctionDeclaration {
  String get name;
  String get description;
  Schema get parameters;
  Schema get response;
  Behavior get behavior;

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FunctionDeclarationCopyWith<FunctionDeclaration> get copyWith =>
      _$FunctionDeclarationCopyWithImpl<FunctionDeclaration>(
          this as FunctionDeclaration, _$identity);

  /// Serializes this FunctionDeclaration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FunctionDeclaration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, parameters, response, behavior);

  @override
  String toString() {
    return 'FunctionDeclaration(name: $name, description: $description, parameters: $parameters, response: $response, behavior: $behavior)';
  }
}

/// @nodoc
abstract mixin class $FunctionDeclarationCopyWith<$Res> {
  factory $FunctionDeclarationCopyWith(
          FunctionDeclaration value, $Res Function(FunctionDeclaration) _then) =
      _$FunctionDeclarationCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String description,
      Schema parameters,
      Schema response,
      Behavior behavior});

  $SchemaCopyWith<$Res> get parameters;
  $SchemaCopyWith<$Res> get response;
}

/// @nodoc
class _$FunctionDeclarationCopyWithImpl<$Res>
    implements $FunctionDeclarationCopyWith<$Res> {
  _$FunctionDeclarationCopyWithImpl(this._self, this._then);

  final FunctionDeclaration _self;
  final $Res Function(FunctionDeclaration) _then;

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
    Object? response = null,
    Object? behavior = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Schema,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Schema,
      behavior: null == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as Behavior,
    ));
  }

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res> get parameters {
    return $SchemaCopyWith<$Res>(_self.parameters, (value) {
      return _then(_self.copyWith(parameters: value));
    });
  }

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res> get response {
    return $SchemaCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _FunctionDeclaration extends FunctionDeclaration {
  _FunctionDeclaration(
      {required this.name,
      required this.description,
      required this.parameters,
      required this.response,
      required this.behavior})
      : super._();
  factory _FunctionDeclaration.fromJson(Map<String, dynamic> json) =>
      _$FunctionDeclarationFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final Schema parameters;
  @override
  final Schema response;
  @override
  final Behavior behavior;

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FunctionDeclarationCopyWith<_FunctionDeclaration> get copyWith =>
      __$FunctionDeclarationCopyWithImpl<_FunctionDeclaration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FunctionDeclarationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunctionDeclaration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, parameters, response, behavior);

  @override
  String toString() {
    return 'FunctionDeclaration(name: $name, description: $description, parameters: $parameters, response: $response, behavior: $behavior)';
  }
}

/// @nodoc
abstract mixin class _$FunctionDeclarationCopyWith<$Res>
    implements $FunctionDeclarationCopyWith<$Res> {
  factory _$FunctionDeclarationCopyWith(_FunctionDeclaration value,
          $Res Function(_FunctionDeclaration) _then) =
      __$FunctionDeclarationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      Schema parameters,
      Schema response,
      Behavior behavior});

  @override
  $SchemaCopyWith<$Res> get parameters;
  @override
  $SchemaCopyWith<$Res> get response;
}

/// @nodoc
class __$FunctionDeclarationCopyWithImpl<$Res>
    implements _$FunctionDeclarationCopyWith<$Res> {
  __$FunctionDeclarationCopyWithImpl(this._self, this._then);

  final _FunctionDeclaration _self;
  final $Res Function(_FunctionDeclaration) _then;

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
    Object? response = null,
    Object? behavior = null,
  }) {
    return _then(_FunctionDeclaration(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Schema,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Schema,
      behavior: null == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as Behavior,
    ));
  }

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res> get parameters {
    return $SchemaCopyWith<$Res>(_self.parameters, (value) {
      return _then(_self.copyWith(parameters: value));
    });
  }

  /// Create a copy of FunctionDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res> get response {
    return $SchemaCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

// dart format on
