// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribution_source_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttributionSourceId {
  GroundingPassageId? get groundingPassage;
  SemanticRetrieverChunk? get semanticRetrieverChunk;

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttributionSourceIdCopyWith<AttributionSourceId> get copyWith =>
      _$AttributionSourceIdCopyWithImpl<AttributionSourceId>(
          this as AttributionSourceId, _$identity);

  /// Serializes this AttributionSourceId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttributionSourceId &&
            (identical(other.groundingPassage, groundingPassage) ||
                other.groundingPassage == groundingPassage) &&
            (identical(other.semanticRetrieverChunk, semanticRetrieverChunk) ||
                other.semanticRetrieverChunk == semanticRetrieverChunk));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groundingPassage, semanticRetrieverChunk);

  @override
  String toString() {
    return 'AttributionSourceId(groundingPassage: $groundingPassage, semanticRetrieverChunk: $semanticRetrieverChunk)';
  }
}

/// @nodoc
abstract mixin class $AttributionSourceIdCopyWith<$Res> {
  factory $AttributionSourceIdCopyWith(
          AttributionSourceId value, $Res Function(AttributionSourceId) _then) =
      _$AttributionSourceIdCopyWithImpl;
  @useResult
  $Res call(
      {GroundingPassageId? groundingPassage,
      SemanticRetrieverChunk? semanticRetrieverChunk});

  $GroundingPassageIdCopyWith<$Res>? get groundingPassage;
  $SemanticRetrieverChunkCopyWith<$Res>? get semanticRetrieverChunk;
}

/// @nodoc
class _$AttributionSourceIdCopyWithImpl<$Res>
    implements $AttributionSourceIdCopyWith<$Res> {
  _$AttributionSourceIdCopyWithImpl(this._self, this._then);

  final AttributionSourceId _self;
  final $Res Function(AttributionSourceId) _then;

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groundingPassage = freezed,
    Object? semanticRetrieverChunk = freezed,
  }) {
    return _then(_self.copyWith(
      groundingPassage: freezed == groundingPassage
          ? _self.groundingPassage
          : groundingPassage // ignore: cast_nullable_to_non_nullable
              as GroundingPassageId?,
      semanticRetrieverChunk: freezed == semanticRetrieverChunk
          ? _self.semanticRetrieverChunk
          : semanticRetrieverChunk // ignore: cast_nullable_to_non_nullable
              as SemanticRetrieverChunk?,
    ));
  }

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroundingPassageIdCopyWith<$Res>? get groundingPassage {
    if (_self.groundingPassage == null) {
      return null;
    }

    return $GroundingPassageIdCopyWith<$Res>(_self.groundingPassage!, (value) {
      return _then(_self.copyWith(groundingPassage: value));
    });
  }

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SemanticRetrieverChunkCopyWith<$Res>? get semanticRetrieverChunk {
    if (_self.semanticRetrieverChunk == null) {
      return null;
    }

    return $SemanticRetrieverChunkCopyWith<$Res>(_self.semanticRetrieverChunk!,
        (value) {
      return _then(_self.copyWith(semanticRetrieverChunk: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AttributionSourceId extends AttributionSourceId {
  _AttributionSourceId({this.groundingPassage, this.semanticRetrieverChunk})
      : super._();
  factory _AttributionSourceId.fromJson(Map<String, dynamic> json) =>
      _$AttributionSourceIdFromJson(json);

  @override
  final GroundingPassageId? groundingPassage;
  @override
  final SemanticRetrieverChunk? semanticRetrieverChunk;

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttributionSourceIdCopyWith<_AttributionSourceId> get copyWith =>
      __$AttributionSourceIdCopyWithImpl<_AttributionSourceId>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttributionSourceIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttributionSourceId &&
            (identical(other.groundingPassage, groundingPassage) ||
                other.groundingPassage == groundingPassage) &&
            (identical(other.semanticRetrieverChunk, semanticRetrieverChunk) ||
                other.semanticRetrieverChunk == semanticRetrieverChunk));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groundingPassage, semanticRetrieverChunk);

  @override
  String toString() {
    return 'AttributionSourceId(groundingPassage: $groundingPassage, semanticRetrieverChunk: $semanticRetrieverChunk)';
  }
}

/// @nodoc
abstract mixin class _$AttributionSourceIdCopyWith<$Res>
    implements $AttributionSourceIdCopyWith<$Res> {
  factory _$AttributionSourceIdCopyWith(_AttributionSourceId value,
          $Res Function(_AttributionSourceId) _then) =
      __$AttributionSourceIdCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GroundingPassageId? groundingPassage,
      SemanticRetrieverChunk? semanticRetrieverChunk});

  @override
  $GroundingPassageIdCopyWith<$Res>? get groundingPassage;
  @override
  $SemanticRetrieverChunkCopyWith<$Res>? get semanticRetrieverChunk;
}

/// @nodoc
class __$AttributionSourceIdCopyWithImpl<$Res>
    implements _$AttributionSourceIdCopyWith<$Res> {
  __$AttributionSourceIdCopyWithImpl(this._self, this._then);

  final _AttributionSourceId _self;
  final $Res Function(_AttributionSourceId) _then;

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groundingPassage = freezed,
    Object? semanticRetrieverChunk = freezed,
  }) {
    return _then(_AttributionSourceId(
      groundingPassage: freezed == groundingPassage
          ? _self.groundingPassage
          : groundingPassage // ignore: cast_nullable_to_non_nullable
              as GroundingPassageId?,
      semanticRetrieverChunk: freezed == semanticRetrieverChunk
          ? _self.semanticRetrieverChunk
          : semanticRetrieverChunk // ignore: cast_nullable_to_non_nullable
              as SemanticRetrieverChunk?,
    ));
  }

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroundingPassageIdCopyWith<$Res>? get groundingPassage {
    if (_self.groundingPassage == null) {
      return null;
    }

    return $GroundingPassageIdCopyWith<$Res>(_self.groundingPassage!, (value) {
      return _then(_self.copyWith(groundingPassage: value));
    });
  }

  /// Create a copy of AttributionSourceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SemanticRetrieverChunkCopyWith<$Res>? get semanticRetrieverChunk {
    if (_self.semanticRetrieverChunk == null) {
      return null;
    }

    return $SemanticRetrieverChunkCopyWith<$Res>(_self.semanticRetrieverChunk!,
        (value) {
      return _then(_self.copyWith(semanticRetrieverChunk: value));
    });
  }
}

// dart format on
