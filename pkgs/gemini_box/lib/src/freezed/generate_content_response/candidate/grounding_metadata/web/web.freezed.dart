// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Web {
  String? get uri;
  String? get title;

  /// Create a copy of Web
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebCopyWith<Web> get copyWith =>
      _$WebCopyWithImpl<Web>(this as Web, _$identity);

  /// Serializes this Web to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Web &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, title);

  @override
  String toString() {
    return 'Web(uri: $uri, title: $title)';
  }
}

/// @nodoc
abstract mixin class $WebCopyWith<$Res> {
  factory $WebCopyWith(Web value, $Res Function(Web) _then) = _$WebCopyWithImpl;
  @useResult
  $Res call({String? uri, String? title});
}

/// @nodoc
class _$WebCopyWithImpl<$Res> implements $WebCopyWith<$Res> {
  _$WebCopyWithImpl(this._self, this._then);

  final Web _self;
  final $Res Function(Web) _then;

  /// Create a copy of Web
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? title = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Web extends Web {
  _Web({this.uri, this.title}) : super._();
  factory _Web.fromJson(Map<String, dynamic> json) => _$WebFromJson(json);

  @override
  final String? uri;
  @override
  final String? title;

  /// Create a copy of Web
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebCopyWith<_Web> get copyWith =>
      __$WebCopyWithImpl<_Web>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WebToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Web &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, title);

  @override
  String toString() {
    return 'Web(uri: $uri, title: $title)';
  }
}

/// @nodoc
abstract mixin class _$WebCopyWith<$Res> implements $WebCopyWith<$Res> {
  factory _$WebCopyWith(_Web value, $Res Function(_Web) _then) =
      __$WebCopyWithImpl;
  @override
  @useResult
  $Res call({String? uri, String? title});
}

/// @nodoc
class __$WebCopyWithImpl<$Res> implements _$WebCopyWith<$Res> {
  __$WebCopyWithImpl(this._self, this._then);

  final _Web _self;
  final $Res Function(_Web) _then;

  /// Create a copy of Web
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? title = freezed,
  }) {
    return _then(_Web(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
