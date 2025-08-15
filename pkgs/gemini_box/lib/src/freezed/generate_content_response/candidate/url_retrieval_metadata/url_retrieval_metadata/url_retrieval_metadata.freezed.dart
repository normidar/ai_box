// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_retrieval_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlRetrievalMetadata {
  List<UrlRetrievalContext>? get urlRetrievalContexts;

  /// Create a copy of UrlRetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UrlRetrievalMetadataCopyWith<UrlRetrievalMetadata> get copyWith =>
      _$UrlRetrievalMetadataCopyWithImpl<UrlRetrievalMetadata>(
          this as UrlRetrievalMetadata, _$identity);

  /// Serializes this UrlRetrievalMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrlRetrievalMetadata &&
            const DeepCollectionEquality()
                .equals(other.urlRetrievalContexts, urlRetrievalContexts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(urlRetrievalContexts));

  @override
  String toString() {
    return 'UrlRetrievalMetadata(urlRetrievalContexts: $urlRetrievalContexts)';
  }
}

/// @nodoc
abstract mixin class $UrlRetrievalMetadataCopyWith<$Res> {
  factory $UrlRetrievalMetadataCopyWith(UrlRetrievalMetadata value,
          $Res Function(UrlRetrievalMetadata) _then) =
      _$UrlRetrievalMetadataCopyWithImpl;
  @useResult
  $Res call({List<UrlRetrievalContext>? urlRetrievalContexts});
}

/// @nodoc
class _$UrlRetrievalMetadataCopyWithImpl<$Res>
    implements $UrlRetrievalMetadataCopyWith<$Res> {
  _$UrlRetrievalMetadataCopyWithImpl(this._self, this._then);

  final UrlRetrievalMetadata _self;
  final $Res Function(UrlRetrievalMetadata) _then;

  /// Create a copy of UrlRetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlRetrievalContexts = freezed,
  }) {
    return _then(_self.copyWith(
      urlRetrievalContexts: freezed == urlRetrievalContexts
          ? _self.urlRetrievalContexts
          : urlRetrievalContexts // ignore: cast_nullable_to_non_nullable
              as List<UrlRetrievalContext>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UrlRetrievalMetadata extends UrlRetrievalMetadata {
  _UrlRetrievalMetadata({final List<UrlRetrievalContext>? urlRetrievalContexts})
      : _urlRetrievalContexts = urlRetrievalContexts,
        super._();
  factory _UrlRetrievalMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlRetrievalMetadataFromJson(json);

  final List<UrlRetrievalContext>? _urlRetrievalContexts;
  @override
  List<UrlRetrievalContext>? get urlRetrievalContexts {
    final value = _urlRetrievalContexts;
    if (value == null) return null;
    if (_urlRetrievalContexts is EqualUnmodifiableListView)
      return _urlRetrievalContexts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UrlRetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UrlRetrievalMetadataCopyWith<_UrlRetrievalMetadata> get copyWith =>
      __$UrlRetrievalMetadataCopyWithImpl<_UrlRetrievalMetadata>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UrlRetrievalMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlRetrievalMetadata &&
            const DeepCollectionEquality()
                .equals(other._urlRetrievalContexts, _urlRetrievalContexts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_urlRetrievalContexts));

  @override
  String toString() {
    return 'UrlRetrievalMetadata(urlRetrievalContexts: $urlRetrievalContexts)';
  }
}

/// @nodoc
abstract mixin class _$UrlRetrievalMetadataCopyWith<$Res>
    implements $UrlRetrievalMetadataCopyWith<$Res> {
  factory _$UrlRetrievalMetadataCopyWith(_UrlRetrievalMetadata value,
          $Res Function(_UrlRetrievalMetadata) _then) =
      __$UrlRetrievalMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({List<UrlRetrievalContext>? urlRetrievalContexts});
}

/// @nodoc
class __$UrlRetrievalMetadataCopyWithImpl<$Res>
    implements _$UrlRetrievalMetadataCopyWith<$Res> {
  __$UrlRetrievalMetadataCopyWithImpl(this._self, this._then);

  final _UrlRetrievalMetadata _self;
  final $Res Function(_UrlRetrievalMetadata) _then;

  /// Create a copy of UrlRetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? urlRetrievalContexts = freezed,
  }) {
    return _then(_UrlRetrievalMetadata(
      urlRetrievalContexts: freezed == urlRetrievalContexts
          ? _self._urlRetrievalContexts
          : urlRetrievalContexts // ignore: cast_nullable_to_non_nullable
              as List<UrlRetrievalContext>?,
    ));
  }
}

// dart format on
