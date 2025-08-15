// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_candidates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopCandidates {
  List<Candidate>? get candidates;

  /// Create a copy of TopCandidates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopCandidatesCopyWith<TopCandidates> get copyWith =>
      _$TopCandidatesCopyWithImpl<TopCandidates>(
          this as TopCandidates, _$identity);

  /// Serializes this TopCandidates to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopCandidates &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(candidates));

  @override
  String toString() {
    return 'TopCandidates(candidates: $candidates)';
  }
}

/// @nodoc
abstract mixin class $TopCandidatesCopyWith<$Res> {
  factory $TopCandidatesCopyWith(
          TopCandidates value, $Res Function(TopCandidates) _then) =
      _$TopCandidatesCopyWithImpl;
  @useResult
  $Res call({List<Candidate>? candidates});
}

/// @nodoc
class _$TopCandidatesCopyWithImpl<$Res>
    implements $TopCandidatesCopyWith<$Res> {
  _$TopCandidatesCopyWithImpl(this._self, this._then);

  final TopCandidates _self;
  final $Res Function(TopCandidates) _then;

  /// Create a copy of TopCandidates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_self.copyWith(
      candidates: freezed == candidates
          ? _self.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TopCandidates extends TopCandidates {
  _TopCandidates({final List<Candidate>? candidates})
      : _candidates = candidates,
        super._();
  factory _TopCandidates.fromJson(Map<String, dynamic> json) =>
      _$TopCandidatesFromJson(json);

  final List<Candidate>? _candidates;
  @override
  List<Candidate>? get candidates {
    final value = _candidates;
    if (value == null) return null;
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TopCandidates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TopCandidatesCopyWith<_TopCandidates> get copyWith =>
      __$TopCandidatesCopyWithImpl<_TopCandidates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TopCandidatesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopCandidates &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_candidates));

  @override
  String toString() {
    return 'TopCandidates(candidates: $candidates)';
  }
}

/// @nodoc
abstract mixin class _$TopCandidatesCopyWith<$Res>
    implements $TopCandidatesCopyWith<$Res> {
  factory _$TopCandidatesCopyWith(
          _TopCandidates value, $Res Function(_TopCandidates) _then) =
      __$TopCandidatesCopyWithImpl;
  @override
  @useResult
  $Res call({List<Candidate>? candidates});
}

/// @nodoc
class __$TopCandidatesCopyWithImpl<$Res>
    implements _$TopCandidatesCopyWith<$Res> {
  __$TopCandidatesCopyWithImpl(this._self, this._then);

  final _TopCandidates _self;
  final $Res Function(_TopCandidates) _then;

  /// Create a copy of TopCandidates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_TopCandidates(
      candidates: freezed == candidates
          ? _self._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ));
  }
}

// dart format on
