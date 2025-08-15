// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grounding_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroundingMetadata {
  List<GroundingChunk>? get groundingChunks;
  List<GroundingSupport>? get groundingSupports;
  List<String>? get webSearchQueries;
  SearchEntryPoint? get searchEntryPoint;
  RetrievalMetadata? get retrievalMetadata;

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroundingMetadataCopyWith<GroundingMetadata> get copyWith =>
      _$GroundingMetadataCopyWithImpl<GroundingMetadata>(
          this as GroundingMetadata, _$identity);

  /// Serializes this GroundingMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundingMetadata &&
            const DeepCollectionEquality()
                .equals(other.groundingChunks, groundingChunks) &&
            const DeepCollectionEquality()
                .equals(other.groundingSupports, groundingSupports) &&
            const DeepCollectionEquality()
                .equals(other.webSearchQueries, webSearchQueries) &&
            (identical(other.searchEntryPoint, searchEntryPoint) ||
                other.searchEntryPoint == searchEntryPoint) &&
            (identical(other.retrievalMetadata, retrievalMetadata) ||
                other.retrievalMetadata == retrievalMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groundingChunks),
      const DeepCollectionEquality().hash(groundingSupports),
      const DeepCollectionEquality().hash(webSearchQueries),
      searchEntryPoint,
      retrievalMetadata);

  @override
  String toString() {
    return 'GroundingMetadata(groundingChunks: $groundingChunks, groundingSupports: $groundingSupports, webSearchQueries: $webSearchQueries, searchEntryPoint: $searchEntryPoint, retrievalMetadata: $retrievalMetadata)';
  }
}

/// @nodoc
abstract mixin class $GroundingMetadataCopyWith<$Res> {
  factory $GroundingMetadataCopyWith(
          GroundingMetadata value, $Res Function(GroundingMetadata) _then) =
      _$GroundingMetadataCopyWithImpl;
  @useResult
  $Res call(
      {List<GroundingChunk>? groundingChunks,
      List<GroundingSupport>? groundingSupports,
      List<String>? webSearchQueries,
      SearchEntryPoint? searchEntryPoint,
      RetrievalMetadata? retrievalMetadata});

  $SearchEntryPointCopyWith<$Res>? get searchEntryPoint;
  $RetrievalMetadataCopyWith<$Res>? get retrievalMetadata;
}

/// @nodoc
class _$GroundingMetadataCopyWithImpl<$Res>
    implements $GroundingMetadataCopyWith<$Res> {
  _$GroundingMetadataCopyWithImpl(this._self, this._then);

  final GroundingMetadata _self;
  final $Res Function(GroundingMetadata) _then;

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groundingChunks = freezed,
    Object? groundingSupports = freezed,
    Object? webSearchQueries = freezed,
    Object? searchEntryPoint = freezed,
    Object? retrievalMetadata = freezed,
  }) {
    return _then(_self.copyWith(
      groundingChunks: freezed == groundingChunks
          ? _self.groundingChunks
          : groundingChunks // ignore: cast_nullable_to_non_nullable
              as List<GroundingChunk>?,
      groundingSupports: freezed == groundingSupports
          ? _self.groundingSupports
          : groundingSupports // ignore: cast_nullable_to_non_nullable
              as List<GroundingSupport>?,
      webSearchQueries: freezed == webSearchQueries
          ? _self.webSearchQueries
          : webSearchQueries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchEntryPoint: freezed == searchEntryPoint
          ? _self.searchEntryPoint
          : searchEntryPoint // ignore: cast_nullable_to_non_nullable
              as SearchEntryPoint?,
      retrievalMetadata: freezed == retrievalMetadata
          ? _self.retrievalMetadata
          : retrievalMetadata // ignore: cast_nullable_to_non_nullable
              as RetrievalMetadata?,
    ));
  }

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchEntryPointCopyWith<$Res>? get searchEntryPoint {
    if (_self.searchEntryPoint == null) {
      return null;
    }

    return $SearchEntryPointCopyWith<$Res>(_self.searchEntryPoint!, (value) {
      return _then(_self.copyWith(searchEntryPoint: value));
    });
  }

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetrievalMetadataCopyWith<$Res>? get retrievalMetadata {
    if (_self.retrievalMetadata == null) {
      return null;
    }

    return $RetrievalMetadataCopyWith<$Res>(_self.retrievalMetadata!, (value) {
      return _then(_self.copyWith(retrievalMetadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GroundingMetadata extends GroundingMetadata {
  _GroundingMetadata(
      {final List<GroundingChunk>? groundingChunks,
      final List<GroundingSupport>? groundingSupports,
      final List<String>? webSearchQueries,
      this.searchEntryPoint,
      this.retrievalMetadata})
      : _groundingChunks = groundingChunks,
        _groundingSupports = groundingSupports,
        _webSearchQueries = webSearchQueries,
        super._();
  factory _GroundingMetadata.fromJson(Map<String, dynamic> json) =>
      _$GroundingMetadataFromJson(json);

  final List<GroundingChunk>? _groundingChunks;
  @override
  List<GroundingChunk>? get groundingChunks {
    final value = _groundingChunks;
    if (value == null) return null;
    if (_groundingChunks is EqualUnmodifiableListView) return _groundingChunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GroundingSupport>? _groundingSupports;
  @override
  List<GroundingSupport>? get groundingSupports {
    final value = _groundingSupports;
    if (value == null) return null;
    if (_groundingSupports is EqualUnmodifiableListView)
      return _groundingSupports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _webSearchQueries;
  @override
  List<String>? get webSearchQueries {
    final value = _webSearchQueries;
    if (value == null) return null;
    if (_webSearchQueries is EqualUnmodifiableListView)
      return _webSearchQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchEntryPoint? searchEntryPoint;
  @override
  final RetrievalMetadata? retrievalMetadata;

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroundingMetadataCopyWith<_GroundingMetadata> get copyWith =>
      __$GroundingMetadataCopyWithImpl<_GroundingMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroundingMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroundingMetadata &&
            const DeepCollectionEquality()
                .equals(other._groundingChunks, _groundingChunks) &&
            const DeepCollectionEquality()
                .equals(other._groundingSupports, _groundingSupports) &&
            const DeepCollectionEquality()
                .equals(other._webSearchQueries, _webSearchQueries) &&
            (identical(other.searchEntryPoint, searchEntryPoint) ||
                other.searchEntryPoint == searchEntryPoint) &&
            (identical(other.retrievalMetadata, retrievalMetadata) ||
                other.retrievalMetadata == retrievalMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groundingChunks),
      const DeepCollectionEquality().hash(_groundingSupports),
      const DeepCollectionEquality().hash(_webSearchQueries),
      searchEntryPoint,
      retrievalMetadata);

  @override
  String toString() {
    return 'GroundingMetadata(groundingChunks: $groundingChunks, groundingSupports: $groundingSupports, webSearchQueries: $webSearchQueries, searchEntryPoint: $searchEntryPoint, retrievalMetadata: $retrievalMetadata)';
  }
}

/// @nodoc
abstract mixin class _$GroundingMetadataCopyWith<$Res>
    implements $GroundingMetadataCopyWith<$Res> {
  factory _$GroundingMetadataCopyWith(
          _GroundingMetadata value, $Res Function(_GroundingMetadata) _then) =
      __$GroundingMetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<GroundingChunk>? groundingChunks,
      List<GroundingSupport>? groundingSupports,
      List<String>? webSearchQueries,
      SearchEntryPoint? searchEntryPoint,
      RetrievalMetadata? retrievalMetadata});

  @override
  $SearchEntryPointCopyWith<$Res>? get searchEntryPoint;
  @override
  $RetrievalMetadataCopyWith<$Res>? get retrievalMetadata;
}

/// @nodoc
class __$GroundingMetadataCopyWithImpl<$Res>
    implements _$GroundingMetadataCopyWith<$Res> {
  __$GroundingMetadataCopyWithImpl(this._self, this._then);

  final _GroundingMetadata _self;
  final $Res Function(_GroundingMetadata) _then;

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groundingChunks = freezed,
    Object? groundingSupports = freezed,
    Object? webSearchQueries = freezed,
    Object? searchEntryPoint = freezed,
    Object? retrievalMetadata = freezed,
  }) {
    return _then(_GroundingMetadata(
      groundingChunks: freezed == groundingChunks
          ? _self._groundingChunks
          : groundingChunks // ignore: cast_nullable_to_non_nullable
              as List<GroundingChunk>?,
      groundingSupports: freezed == groundingSupports
          ? _self._groundingSupports
          : groundingSupports // ignore: cast_nullable_to_non_nullable
              as List<GroundingSupport>?,
      webSearchQueries: freezed == webSearchQueries
          ? _self._webSearchQueries
          : webSearchQueries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchEntryPoint: freezed == searchEntryPoint
          ? _self.searchEntryPoint
          : searchEntryPoint // ignore: cast_nullable_to_non_nullable
              as SearchEntryPoint?,
      retrievalMetadata: freezed == retrievalMetadata
          ? _self.retrievalMetadata
          : retrievalMetadata // ignore: cast_nullable_to_non_nullable
              as RetrievalMetadata?,
    ));
  }

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchEntryPointCopyWith<$Res>? get searchEntryPoint {
    if (_self.searchEntryPoint == null) {
      return null;
    }

    return $SearchEntryPointCopyWith<$Res>(_self.searchEntryPoint!, (value) {
      return _then(_self.copyWith(searchEntryPoint: value));
    });
  }

  /// Create a copy of GroundingMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetrievalMetadataCopyWith<$Res>? get retrievalMetadata {
    if (_self.retrievalMetadata == null) {
      return null;
    }

    return $RetrievalMetadataCopyWith<$Res>(_self.retrievalMetadata!, (value) {
      return _then(_self.copyWith(retrievalMetadata: value));
    });
  }
}

// dart format on
