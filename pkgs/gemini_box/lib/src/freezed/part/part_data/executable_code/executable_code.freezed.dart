// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'executable_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExecutableCode {
  String get code;
  Language get language;

  /// Create a copy of ExecutableCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecutableCodeCopyWith<ExecutableCode> get copyWith =>
      _$ExecutableCodeCopyWithImpl<ExecutableCode>(
          this as ExecutableCode, _$identity);

  /// Serializes this ExecutableCode to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecutableCode &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, language);

  @override
  String toString() {
    return 'ExecutableCode(code: $code, language: $language)';
  }
}

/// @nodoc
abstract mixin class $ExecutableCodeCopyWith<$Res> {
  factory $ExecutableCodeCopyWith(
          ExecutableCode value, $Res Function(ExecutableCode) _then) =
      _$ExecutableCodeCopyWithImpl;
  @useResult
  $Res call({String code, Language language});
}

/// @nodoc
class _$ExecutableCodeCopyWithImpl<$Res>
    implements $ExecutableCodeCopyWith<$Res> {
  _$ExecutableCodeCopyWithImpl(this._self, this._then);

  final ExecutableCode _self;
  final $Res Function(ExecutableCode) _then;

  /// Create a copy of ExecutableCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? language = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExecutableCode extends ExecutableCode {
  _ExecutableCode({required this.code, required this.language}) : super._();
  factory _ExecutableCode.fromJson(Map<String, dynamic> json) =>
      _$ExecutableCodeFromJson(json);

  @override
  final String code;
  @override
  final Language language;

  /// Create a copy of ExecutableCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExecutableCodeCopyWith<_ExecutableCode> get copyWith =>
      __$ExecutableCodeCopyWithImpl<_ExecutableCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecutableCodeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExecutableCode &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, language);

  @override
  String toString() {
    return 'ExecutableCode(code: $code, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$ExecutableCodeCopyWith<$Res>
    implements $ExecutableCodeCopyWith<$Res> {
  factory _$ExecutableCodeCopyWith(
          _ExecutableCode value, $Res Function(_ExecutableCode) _then) =
      __$ExecutableCodeCopyWithImpl;
  @override
  @useResult
  $Res call({String code, Language language});
}

/// @nodoc
class __$ExecutableCodeCopyWithImpl<$Res>
    implements _$ExecutableCodeCopyWith<$Res> {
  __$ExecutableCodeCopyWithImpl(this._self, this._then);

  final _ExecutableCode _self;
  final $Res Function(_ExecutableCode) _then;

  /// Create a copy of ExecutableCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? language = null,
  }) {
    return _then(_ExecutableCode(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

// dart format on
