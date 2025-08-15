// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_context_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlContextMetadata {
  List<UrlMetadata>? get urlMetadata;

  /// Create a copy of UrlContextMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UrlContextMetadataCopyWith<UrlContextMetadata> get copyWith =>
      _$UrlContextMetadataCopyWithImpl<UrlContextMetadata>(
          this as UrlContextMetadata, _$identity);

  /// Serializes this UrlContextMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrlContextMetadata &&
            const DeepCollectionEquality()
                .equals(other.urlMetadata, urlMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(urlMetadata));

  @override
  String toString() {
    return 'UrlContextMetadata(urlMetadata: $urlMetadata)';
  }
}

/// @nodoc
abstract mixin class $UrlContextMetadataCopyWith<$Res> {
  factory $UrlContextMetadataCopyWith(
          UrlContextMetadata value, $Res Function(UrlContextMetadata) _then) =
      _$UrlContextMetadataCopyWithImpl;
  @useResult
  $Res call({List<UrlMetadata>? urlMetadata});
}

/// @nodoc
class _$UrlContextMetadataCopyWithImpl<$Res>
    implements $UrlContextMetadataCopyWith<$Res> {
  _$UrlContextMetadataCopyWithImpl(this._self, this._then);

  final UrlContextMetadata _self;
  final $Res Function(UrlContextMetadata) _then;

  /// Create a copy of UrlContextMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlMetadata = freezed,
  }) {
    return _then(_self.copyWith(
      urlMetadata: freezed == urlMetadata
          ? _self.urlMetadata
          : urlMetadata // ignore: cast_nullable_to_non_nullable
              as List<UrlMetadata>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UrlContextMetadata extends UrlContextMetadata {
  _UrlContextMetadata({final List<UrlMetadata>? urlMetadata})
      : _urlMetadata = urlMetadata,
        super._();
  factory _UrlContextMetadata.fromJson(Map<String, dynamic> json) =>
      _$UrlContextMetadataFromJson(json);

  final List<UrlMetadata>? _urlMetadata;
  @override
  List<UrlMetadata>? get urlMetadata {
    final value = _urlMetadata;
    if (value == null) return null;
    if (_urlMetadata is EqualUnmodifiableListView) return _urlMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UrlContextMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UrlContextMetadataCopyWith<_UrlContextMetadata> get copyWith =>
      __$UrlContextMetadataCopyWithImpl<_UrlContextMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UrlContextMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlContextMetadata &&
            const DeepCollectionEquality()
                .equals(other._urlMetadata, _urlMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_urlMetadata));

  @override
  String toString() {
    return 'UrlContextMetadata(urlMetadata: $urlMetadata)';
  }
}

/// @nodoc
abstract mixin class _$UrlContextMetadataCopyWith<$Res>
    implements $UrlContextMetadataCopyWith<$Res> {
  factory _$UrlContextMetadataCopyWith(
          _UrlContextMetadata value, $Res Function(_UrlContextMetadata) _then) =
      __$UrlContextMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({List<UrlMetadata>? urlMetadata});
}

/// @nodoc
class __$UrlContextMetadataCopyWithImpl<$Res>
    implements _$UrlContextMetadataCopyWith<$Res> {
  __$UrlContextMetadataCopyWithImpl(this._self, this._then);

  final _UrlContextMetadata _self;
  final $Res Function(_UrlContextMetadata) _then;

  /// Create a copy of UrlContextMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? urlMetadata = freezed,
  }) {
    return _then(_UrlContextMetadata(
      urlMetadata: freezed == urlMetadata
          ? _self._urlMetadata
          : urlMetadata // ignore: cast_nullable_to_non_nullable
              as List<UrlMetadata>?,
    ));
  }
}

// dart format on
