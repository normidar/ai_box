// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_entry_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchEntryPoint {
  String? get renderedContent;
  String? get sdkBlob;

  /// Create a copy of SearchEntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchEntryPointCopyWith<SearchEntryPoint> get copyWith =>
      _$SearchEntryPointCopyWithImpl<SearchEntryPoint>(
          this as SearchEntryPoint, _$identity);

  /// Serializes this SearchEntryPoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchEntryPoint &&
            (identical(other.renderedContent, renderedContent) ||
                other.renderedContent == renderedContent) &&
            (identical(other.sdkBlob, sdkBlob) || other.sdkBlob == sdkBlob));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, renderedContent, sdkBlob);

  @override
  String toString() {
    return 'SearchEntryPoint(renderedContent: $renderedContent, sdkBlob: $sdkBlob)';
  }
}

/// @nodoc
abstract mixin class $SearchEntryPointCopyWith<$Res> {
  factory $SearchEntryPointCopyWith(
          SearchEntryPoint value, $Res Function(SearchEntryPoint) _then) =
      _$SearchEntryPointCopyWithImpl;
  @useResult
  $Res call({String? renderedContent, String? sdkBlob});
}

/// @nodoc
class _$SearchEntryPointCopyWithImpl<$Res>
    implements $SearchEntryPointCopyWith<$Res> {
  _$SearchEntryPointCopyWithImpl(this._self, this._then);

  final SearchEntryPoint _self;
  final $Res Function(SearchEntryPoint) _then;

  /// Create a copy of SearchEntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renderedContent = freezed,
    Object? sdkBlob = freezed,
  }) {
    return _then(_self.copyWith(
      renderedContent: freezed == renderedContent
          ? _self.renderedContent
          : renderedContent // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkBlob: freezed == sdkBlob
          ? _self.sdkBlob
          : sdkBlob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SearchEntryPoint extends SearchEntryPoint {
  _SearchEntryPoint({this.renderedContent, this.sdkBlob}) : super._();
  factory _SearchEntryPoint.fromJson(Map<String, dynamic> json) =>
      _$SearchEntryPointFromJson(json);

  @override
  final String? renderedContent;
  @override
  final String? sdkBlob;

  /// Create a copy of SearchEntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchEntryPointCopyWith<_SearchEntryPoint> get copyWith =>
      __$SearchEntryPointCopyWithImpl<_SearchEntryPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchEntryPointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEntryPoint &&
            (identical(other.renderedContent, renderedContent) ||
                other.renderedContent == renderedContent) &&
            (identical(other.sdkBlob, sdkBlob) || other.sdkBlob == sdkBlob));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, renderedContent, sdkBlob);

  @override
  String toString() {
    return 'SearchEntryPoint(renderedContent: $renderedContent, sdkBlob: $sdkBlob)';
  }
}

/// @nodoc
abstract mixin class _$SearchEntryPointCopyWith<$Res>
    implements $SearchEntryPointCopyWith<$Res> {
  factory _$SearchEntryPointCopyWith(
          _SearchEntryPoint value, $Res Function(_SearchEntryPoint) _then) =
      __$SearchEntryPointCopyWithImpl;
  @override
  @useResult
  $Res call({String? renderedContent, String? sdkBlob});
}

/// @nodoc
class __$SearchEntryPointCopyWithImpl<$Res>
    implements _$SearchEntryPointCopyWith<$Res> {
  __$SearchEntryPointCopyWithImpl(this._self, this._then);

  final _SearchEntryPoint _self;
  final $Res Function(_SearchEntryPoint) _then;

  /// Create a copy of SearchEntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? renderedContent = freezed,
    Object? sdkBlob = freezed,
  }) {
    return _then(_SearchEntryPoint(
      renderedContent: freezed == renderedContent
          ? _self.renderedContent
          : renderedContent // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkBlob: freezed == sdkBlob
          ? _self.sdkBlob
          : sdkBlob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
