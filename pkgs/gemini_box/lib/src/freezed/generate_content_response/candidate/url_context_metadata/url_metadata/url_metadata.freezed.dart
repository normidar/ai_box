// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlMetadata {
  String? get retrievedUrl;
  UrlRetrievalStatus? get urlRetrievalStatus;

  /// Create a copy of UrlMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UrlMetadataCopyWith<UrlMetadata> get copyWith =>
      _$UrlMetadataCopyWithImpl<UrlMetadata>(this as UrlMetadata, _$identity);

  /// Serializes this UrlMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrlMetadata &&
            (identical(other.retrievedUrl, retrievedUrl) ||
                other.retrievedUrl == retrievedUrl) &&
            (identical(other.urlRetrievalStatus, urlRetrievalStatus) ||
                other.urlRetrievalStatus == urlRetrievalStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, retrievedUrl, urlRetrievalStatus);

  @override
  String toString() {
    return 'UrlMetadata(retrievedUrl: $retrievedUrl, urlRetrievalStatus: $urlRetrievalStatus)';
  }
}

/// @nodoc
abstract mixin class $UrlMetadataCopyWith<$Res> {
  factory $UrlMetadataCopyWith(
          UrlMetadata value, $Res Function(UrlMetadata) _then) =
      _$UrlMetadataCopyWithImpl;
  @useResult
  $Res call({String? retrievedUrl, UrlRetrievalStatus? urlRetrievalStatus});
}

/// @nodoc
class _$UrlMetadataCopyWithImpl<$Res> implements $UrlMetadataCopyWith<$Res> {
  _$UrlMetadataCopyWithImpl(this._self, this._then);

  final UrlMetadata _self;
  final $Res Function(UrlMetadata) _then;

  /// Create a copy of UrlMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retrievedUrl = freezed,
    Object? urlRetrievalStatus = freezed,
  }) {
    return _then(_self.copyWith(
      retrievedUrl: freezed == retrievedUrl
          ? _self.retrievedUrl
          : retrievedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      urlRetrievalStatus: freezed == urlRetrievalStatus
          ? _self.urlRetrievalStatus
          : urlRetrievalStatus // ignore: cast_nullable_to_non_nullable
              as UrlRetrievalStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UrlMetadata extends UrlMetadata {
  _UrlMetadata({this.retrievedUrl, this.urlRetrievalStatus}) : super._();
  factory _UrlMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlMetadataFromJson(json);

  @override
  final String? retrievedUrl;
  @override
  final UrlRetrievalStatus? urlRetrievalStatus;

  /// Create a copy of UrlMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UrlMetadataCopyWith<_UrlMetadata> get copyWith =>
      __$UrlMetadataCopyWithImpl<_UrlMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UrlMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlMetadata &&
            (identical(other.retrievedUrl, retrievedUrl) ||
                other.retrievedUrl == retrievedUrl) &&
            (identical(other.urlRetrievalStatus, urlRetrievalStatus) ||
                other.urlRetrievalStatus == urlRetrievalStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, retrievedUrl, urlRetrievalStatus);

  @override
  String toString() {
    return 'UrlMetadata(retrievedUrl: $retrievedUrl, urlRetrievalStatus: $urlRetrievalStatus)';
  }
}

/// @nodoc
abstract mixin class _$UrlMetadataCopyWith<$Res>
    implements $UrlMetadataCopyWith<$Res> {
  factory _$UrlMetadataCopyWith(
          _UrlMetadata value, $Res Function(_UrlMetadata) _then) =
      __$UrlMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({String? retrievedUrl, UrlRetrievalStatus? urlRetrievalStatus});
}

/// @nodoc
class __$UrlMetadataCopyWithImpl<$Res> implements _$UrlMetadataCopyWith<$Res> {
  __$UrlMetadataCopyWithImpl(this._self, this._then);

  final _UrlMetadata _self;
  final $Res Function(_UrlMetadata) _then;

  /// Create a copy of UrlMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? retrievedUrl = freezed,
    Object? urlRetrievalStatus = freezed,
  }) {
    return _then(_UrlMetadata(
      retrievedUrl: freezed == retrievedUrl
          ? _self.retrievedUrl
          : retrievedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      urlRetrievalStatus: freezed == urlRetrievalStatus
          ? _self.urlRetrievalStatus
          : urlRetrievalStatus // ignore: cast_nullable_to_non_nullable
              as UrlRetrievalStatus?,
    ));
  }
}

// dart format on
