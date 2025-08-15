// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grounding_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroundingChunk {
  Web? get web;

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroundingChunkCopyWith<GroundingChunk> get copyWith =>
      _$GroundingChunkCopyWithImpl<GroundingChunk>(
          this as GroundingChunk, _$identity);

  /// Serializes this GroundingChunk to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundingChunk &&
            (identical(other.web, web) || other.web == web));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, web);

  @override
  String toString() {
    return 'GroundingChunk(web: $web)';
  }
}

/// @nodoc
abstract mixin class $GroundingChunkCopyWith<$Res> {
  factory $GroundingChunkCopyWith(
          GroundingChunk value, $Res Function(GroundingChunk) _then) =
      _$GroundingChunkCopyWithImpl;
  @useResult
  $Res call({Web? web});

  $WebCopyWith<$Res>? get web;
}

/// @nodoc
class _$GroundingChunkCopyWithImpl<$Res>
    implements $GroundingChunkCopyWith<$Res> {
  _$GroundingChunkCopyWithImpl(this._self, this._then);

  final GroundingChunk _self;
  final $Res Function(GroundingChunk) _then;

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? web = freezed,
  }) {
    return _then(_self.copyWith(
      web: freezed == web
          ? _self.web
          : web // ignore: cast_nullable_to_non_nullable
              as Web?,
    ));
  }

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebCopyWith<$Res>? get web {
    if (_self.web == null) {
      return null;
    }

    return $WebCopyWith<$Res>(_self.web!, (value) {
      return _then(_self.copyWith(web: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GroundingChunk extends GroundingChunk {
  _GroundingChunk({this.web}) : super._();
  factory _GroundingChunk.fromJson(Map<String, dynamic> json) =>
      _$GroundingChunkFromJson(json);

  @override
  final Web? web;

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroundingChunkCopyWith<_GroundingChunk> get copyWith =>
      __$GroundingChunkCopyWithImpl<_GroundingChunk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroundingChunkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroundingChunk &&
            (identical(other.web, web) || other.web == web));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, web);

  @override
  String toString() {
    return 'GroundingChunk(web: $web)';
  }
}

/// @nodoc
abstract mixin class _$GroundingChunkCopyWith<$Res>
    implements $GroundingChunkCopyWith<$Res> {
  factory _$GroundingChunkCopyWith(
          _GroundingChunk value, $Res Function(_GroundingChunk) _then) =
      __$GroundingChunkCopyWithImpl;
  @override
  @useResult
  $Res call({Web? web});

  @override
  $WebCopyWith<$Res>? get web;
}

/// @nodoc
class __$GroundingChunkCopyWithImpl<$Res>
    implements _$GroundingChunkCopyWith<$Res> {
  __$GroundingChunkCopyWithImpl(this._self, this._then);

  final _GroundingChunk _self;
  final $Res Function(_GroundingChunk) _then;

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? web = freezed,
  }) {
    return _then(_GroundingChunk(
      web: freezed == web
          ? _self.web
          : web // ignore: cast_nullable_to_non_nullable
              as Web?,
    ));
  }

  /// Create a copy of GroundingChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebCopyWith<$Res>? get web {
    if (_self.web == null) {
      return null;
    }

    return $WebCopyWith<$Res>(_self.web!, (value) {
      return _then(_self.copyWith(web: value));
    });
  }
}

// dart format on
