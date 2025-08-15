// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grounding_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroundingSupport {
  List<int>? get groundingChunkIndices;
  List<double>? get confidenceScores;
  Segment? get segment;

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroundingSupportCopyWith<GroundingSupport> get copyWith =>
      _$GroundingSupportCopyWithImpl<GroundingSupport>(
          this as GroundingSupport, _$identity);

  /// Serializes this GroundingSupport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundingSupport &&
            const DeepCollectionEquality()
                .equals(other.groundingChunkIndices, groundingChunkIndices) &&
            const DeepCollectionEquality()
                .equals(other.confidenceScores, confidenceScores) &&
            (identical(other.segment, segment) || other.segment == segment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groundingChunkIndices),
      const DeepCollectionEquality().hash(confidenceScores),
      segment);

  @override
  String toString() {
    return 'GroundingSupport(groundingChunkIndices: $groundingChunkIndices, confidenceScores: $confidenceScores, segment: $segment)';
  }
}

/// @nodoc
abstract mixin class $GroundingSupportCopyWith<$Res> {
  factory $GroundingSupportCopyWith(
          GroundingSupport value, $Res Function(GroundingSupport) _then) =
      _$GroundingSupportCopyWithImpl;
  @useResult
  $Res call(
      {List<int>? groundingChunkIndices,
      List<double>? confidenceScores,
      Segment? segment});

  $SegmentCopyWith<$Res>? get segment;
}

/// @nodoc
class _$GroundingSupportCopyWithImpl<$Res>
    implements $GroundingSupportCopyWith<$Res> {
  _$GroundingSupportCopyWithImpl(this._self, this._then);

  final GroundingSupport _self;
  final $Res Function(GroundingSupport) _then;

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groundingChunkIndices = freezed,
    Object? confidenceScores = freezed,
    Object? segment = freezed,
  }) {
    return _then(_self.copyWith(
      groundingChunkIndices: freezed == groundingChunkIndices
          ? _self.groundingChunkIndices
          : groundingChunkIndices // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      confidenceScores: freezed == confidenceScores
          ? _self.confidenceScores
          : confidenceScores // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      segment: freezed == segment
          ? _self.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as Segment?,
    ));
  }

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SegmentCopyWith<$Res>? get segment {
    if (_self.segment == null) {
      return null;
    }

    return $SegmentCopyWith<$Res>(_self.segment!, (value) {
      return _then(_self.copyWith(segment: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GroundingSupport extends GroundingSupport {
  _GroundingSupport(
      {final List<int>? groundingChunkIndices,
      final List<double>? confidenceScores,
      this.segment})
      : _groundingChunkIndices = groundingChunkIndices,
        _confidenceScores = confidenceScores,
        super._();
  factory _GroundingSupport.fromJson(Map<String, dynamic> json) =>
      _$GroundingSupportFromJson(json);

  final List<int>? _groundingChunkIndices;
  @override
  List<int>? get groundingChunkIndices {
    final value = _groundingChunkIndices;
    if (value == null) return null;
    if (_groundingChunkIndices is EqualUnmodifiableListView)
      return _groundingChunkIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _confidenceScores;
  @override
  List<double>? get confidenceScores {
    final value = _confidenceScores;
    if (value == null) return null;
    if (_confidenceScores is EqualUnmodifiableListView)
      return _confidenceScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Segment? segment;

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroundingSupportCopyWith<_GroundingSupport> get copyWith =>
      __$GroundingSupportCopyWithImpl<_GroundingSupport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroundingSupportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroundingSupport &&
            const DeepCollectionEquality()
                .equals(other._groundingChunkIndices, _groundingChunkIndices) &&
            const DeepCollectionEquality()
                .equals(other._confidenceScores, _confidenceScores) &&
            (identical(other.segment, segment) || other.segment == segment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groundingChunkIndices),
      const DeepCollectionEquality().hash(_confidenceScores),
      segment);

  @override
  String toString() {
    return 'GroundingSupport(groundingChunkIndices: $groundingChunkIndices, confidenceScores: $confidenceScores, segment: $segment)';
  }
}

/// @nodoc
abstract mixin class _$GroundingSupportCopyWith<$Res>
    implements $GroundingSupportCopyWith<$Res> {
  factory _$GroundingSupportCopyWith(
          _GroundingSupport value, $Res Function(_GroundingSupport) _then) =
      __$GroundingSupportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<int>? groundingChunkIndices,
      List<double>? confidenceScores,
      Segment? segment});

  @override
  $SegmentCopyWith<$Res>? get segment;
}

/// @nodoc
class __$GroundingSupportCopyWithImpl<$Res>
    implements _$GroundingSupportCopyWith<$Res> {
  __$GroundingSupportCopyWithImpl(this._self, this._then);

  final _GroundingSupport _self;
  final $Res Function(_GroundingSupport) _then;

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groundingChunkIndices = freezed,
    Object? confidenceScores = freezed,
    Object? segment = freezed,
  }) {
    return _then(_GroundingSupport(
      groundingChunkIndices: freezed == groundingChunkIndices
          ? _self._groundingChunkIndices
          : groundingChunkIndices // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      confidenceScores: freezed == confidenceScores
          ? _self._confidenceScores
          : confidenceScores // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      segment: freezed == segment
          ? _self.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as Segment?,
    ));
  }

  /// Create a copy of GroundingSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SegmentCopyWith<$Res>? get segment {
    if (_self.segment == null) {
      return null;
    }

    return $SegmentCopyWith<$Res>(_self.segment!, (value) {
      return _then(_self.copyWith(segment: value));
    });
  }
}

// dart format on
