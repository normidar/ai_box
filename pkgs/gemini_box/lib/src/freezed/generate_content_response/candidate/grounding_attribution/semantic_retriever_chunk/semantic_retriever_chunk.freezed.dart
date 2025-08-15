// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'semantic_retriever_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SemanticRetrieverChunk {
  String? get source;
  String? get chunk;

  /// Create a copy of SemanticRetrieverChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SemanticRetrieverChunkCopyWith<SemanticRetrieverChunk> get copyWith =>
      _$SemanticRetrieverChunkCopyWithImpl<SemanticRetrieverChunk>(
          this as SemanticRetrieverChunk, _$identity);

  /// Serializes this SemanticRetrieverChunk to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SemanticRetrieverChunk &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.chunk, chunk) || other.chunk == chunk));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, chunk);

  @override
  String toString() {
    return 'SemanticRetrieverChunk(source: $source, chunk: $chunk)';
  }
}

/// @nodoc
abstract mixin class $SemanticRetrieverChunkCopyWith<$Res> {
  factory $SemanticRetrieverChunkCopyWith(SemanticRetrieverChunk value,
          $Res Function(SemanticRetrieverChunk) _then) =
      _$SemanticRetrieverChunkCopyWithImpl;
  @useResult
  $Res call({String? source, String? chunk});
}

/// @nodoc
class _$SemanticRetrieverChunkCopyWithImpl<$Res>
    implements $SemanticRetrieverChunkCopyWith<$Res> {
  _$SemanticRetrieverChunkCopyWithImpl(this._self, this._then);

  final SemanticRetrieverChunk _self;
  final $Res Function(SemanticRetrieverChunk) _then;

  /// Create a copy of SemanticRetrieverChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? chunk = freezed,
  }) {
    return _then(_self.copyWith(
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      chunk: freezed == chunk
          ? _self.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SemanticRetrieverChunk extends SemanticRetrieverChunk {
  _SemanticRetrieverChunk({this.source, this.chunk}) : super._();
  factory _SemanticRetrieverChunk.fromJson(Map<String, dynamic> json) =>
      _$SemanticRetrieverChunkFromJson(json);

  @override
  final String? source;
  @override
  final String? chunk;

  /// Create a copy of SemanticRetrieverChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SemanticRetrieverChunkCopyWith<_SemanticRetrieverChunk> get copyWith =>
      __$SemanticRetrieverChunkCopyWithImpl<_SemanticRetrieverChunk>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SemanticRetrieverChunkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SemanticRetrieverChunk &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.chunk, chunk) || other.chunk == chunk));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, chunk);

  @override
  String toString() {
    return 'SemanticRetrieverChunk(source: $source, chunk: $chunk)';
  }
}

/// @nodoc
abstract mixin class _$SemanticRetrieverChunkCopyWith<$Res>
    implements $SemanticRetrieverChunkCopyWith<$Res> {
  factory _$SemanticRetrieverChunkCopyWith(_SemanticRetrieverChunk value,
          $Res Function(_SemanticRetrieverChunk) _then) =
      __$SemanticRetrieverChunkCopyWithImpl;
  @override
  @useResult
  $Res call({String? source, String? chunk});
}

/// @nodoc
class __$SemanticRetrieverChunkCopyWithImpl<$Res>
    implements _$SemanticRetrieverChunkCopyWith<$Res> {
  __$SemanticRetrieverChunkCopyWithImpl(this._self, this._then);

  final _SemanticRetrieverChunk _self;
  final $Res Function(_SemanticRetrieverChunk) _then;

  /// Create a copy of SemanticRetrieverChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = freezed,
    Object? chunk = freezed,
  }) {
    return _then(_SemanticRetrieverChunk(
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      chunk: freezed == chunk
          ? _self.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
