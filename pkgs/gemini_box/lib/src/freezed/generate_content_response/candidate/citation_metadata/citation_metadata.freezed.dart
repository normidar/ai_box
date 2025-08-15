// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitationMetadata {
  List<CitationSource> get citationSources;

  /// Create a copy of CitationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CitationMetadataCopyWith<CitationMetadata> get copyWith =>
      _$CitationMetadataCopyWithImpl<CitationMetadata>(
          this as CitationMetadata, _$identity);

  /// Serializes this CitationMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CitationMetadata &&
            const DeepCollectionEquality()
                .equals(other.citationSources, citationSources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(citationSources));

  @override
  String toString() {
    return 'CitationMetadata(citationSources: $citationSources)';
  }
}

/// @nodoc
abstract mixin class $CitationMetadataCopyWith<$Res> {
  factory $CitationMetadataCopyWith(
          CitationMetadata value, $Res Function(CitationMetadata) _then) =
      _$CitationMetadataCopyWithImpl;
  @useResult
  $Res call({List<CitationSource> citationSources});
}

/// @nodoc
class _$CitationMetadataCopyWithImpl<$Res>
    implements $CitationMetadataCopyWith<$Res> {
  _$CitationMetadataCopyWithImpl(this._self, this._then);

  final CitationMetadata _self;
  final $Res Function(CitationMetadata) _then;

  /// Create a copy of CitationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citationSources = null,
  }) {
    return _then(_self.copyWith(
      citationSources: null == citationSources
          ? _self.citationSources
          : citationSources // ignore: cast_nullable_to_non_nullable
              as List<CitationSource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CitationMetadata extends CitationMetadata {
  _CitationMetadata({required final List<CitationSource> citationSources})
      : _citationSources = citationSources,
        super._();
  factory _CitationMetadata.fromJson(Map<String, dynamic> json) =>
      _$CitationMetadataFromJson(json);

  final List<CitationSource> _citationSources;
  @override
  List<CitationSource> get citationSources {
    if (_citationSources is EqualUnmodifiableListView) return _citationSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_citationSources);
  }

  /// Create a copy of CitationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CitationMetadataCopyWith<_CitationMetadata> get copyWith =>
      __$CitationMetadataCopyWithImpl<_CitationMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CitationMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CitationMetadata &&
            const DeepCollectionEquality()
                .equals(other._citationSources, _citationSources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_citationSources));

  @override
  String toString() {
    return 'CitationMetadata(citationSources: $citationSources)';
  }
}

/// @nodoc
abstract mixin class _$CitationMetadataCopyWith<$Res>
    implements $CitationMetadataCopyWith<$Res> {
  factory _$CitationMetadataCopyWith(
          _CitationMetadata value, $Res Function(_CitationMetadata) _then) =
      __$CitationMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({List<CitationSource> citationSources});
}

/// @nodoc
class __$CitationMetadataCopyWithImpl<$Res>
    implements _$CitationMetadataCopyWith<$Res> {
  __$CitationMetadataCopyWithImpl(this._self, this._then);

  final _CitationMetadata _self;
  final $Res Function(_CitationMetadata) _then;

  /// Create a copy of CitationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? citationSources = null,
  }) {
    return _then(_CitationMetadata(
      citationSources: null == citationSources
          ? _self._citationSources
          : citationSources // ignore: cast_nullable_to_non_nullable
              as List<CitationSource>,
    ));
  }
}

// dart format on
