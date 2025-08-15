// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitationSource {
  int? get startIndex;
  int? get endIndex;
  String? get uri;
  String? get license;

  /// Create a copy of CitationSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CitationSourceCopyWith<CitationSource> get copyWith =>
      _$CitationSourceCopyWithImpl<CitationSource>(
          this as CitationSource, _$identity);

  /// Serializes this CitationSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CitationSource &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startIndex, endIndex, uri, license);

  @override
  String toString() {
    return 'CitationSource(startIndex: $startIndex, endIndex: $endIndex, uri: $uri, license: $license)';
  }
}

/// @nodoc
abstract mixin class $CitationSourceCopyWith<$Res> {
  factory $CitationSourceCopyWith(
          CitationSource value, $Res Function(CitationSource) _then) =
      _$CitationSourceCopyWithImpl;
  @useResult
  $Res call({int? startIndex, int? endIndex, String? uri, String? license});
}

/// @nodoc
class _$CitationSourceCopyWithImpl<$Res>
    implements $CitationSourceCopyWith<$Res> {
  _$CitationSourceCopyWithImpl(this._self, this._then);

  final CitationSource _self;
  final $Res Function(CitationSource) _then;

  /// Create a copy of CitationSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? uri = freezed,
    Object? license = freezed,
  }) {
    return _then(_self.copyWith(
      startIndex: freezed == startIndex
          ? _self.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _self.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CitationSource extends CitationSource {
  _CitationSource({this.startIndex, this.endIndex, this.uri, this.license})
      : super._();
  factory _CitationSource.fromJson(Map<String, dynamic> json) =>
      _$CitationSourceFromJson(json);

  @override
  final int? startIndex;
  @override
  final int? endIndex;
  @override
  final String? uri;
  @override
  final String? license;

  /// Create a copy of CitationSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CitationSourceCopyWith<_CitationSource> get copyWith =>
      __$CitationSourceCopyWithImpl<_CitationSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CitationSourceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CitationSource &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startIndex, endIndex, uri, license);

  @override
  String toString() {
    return 'CitationSource(startIndex: $startIndex, endIndex: $endIndex, uri: $uri, license: $license)';
  }
}

/// @nodoc
abstract mixin class _$CitationSourceCopyWith<$Res>
    implements $CitationSourceCopyWith<$Res> {
  factory _$CitationSourceCopyWith(
          _CitationSource value, $Res Function(_CitationSource) _then) =
      __$CitationSourceCopyWithImpl;
  @override
  @useResult
  $Res call({int? startIndex, int? endIndex, String? uri, String? license});
}

/// @nodoc
class __$CitationSourceCopyWithImpl<$Res>
    implements _$CitationSourceCopyWith<$Res> {
  __$CitationSourceCopyWithImpl(this._self, this._then);

  final _CitationSource _self;
  final $Res Function(_CitationSource) _then;

  /// Create a copy of CitationSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? uri = freezed,
    Object? license = freezed,
  }) {
    return _then(_CitationSource(
      startIndex: freezed == startIndex
          ? _self.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _self.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
