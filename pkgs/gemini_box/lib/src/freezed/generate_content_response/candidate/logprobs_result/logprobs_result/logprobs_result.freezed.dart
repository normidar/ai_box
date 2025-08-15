// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logprobs_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogprobsResult {
  List<TopCandidates>? get topCandidates;
  List<Candidate>? get chosenCandidates;

  /// Create a copy of LogprobsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogprobsResultCopyWith<LogprobsResult> get copyWith =>
      _$LogprobsResultCopyWithImpl<LogprobsResult>(
          this as LogprobsResult, _$identity);

  /// Serializes this LogprobsResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogprobsResult &&
            const DeepCollectionEquality()
                .equals(other.topCandidates, topCandidates) &&
            const DeepCollectionEquality()
                .equals(other.chosenCandidates, chosenCandidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topCandidates),
      const DeepCollectionEquality().hash(chosenCandidates));

  @override
  String toString() {
    return 'LogprobsResult(topCandidates: $topCandidates, chosenCandidates: $chosenCandidates)';
  }
}

/// @nodoc
abstract mixin class $LogprobsResultCopyWith<$Res> {
  factory $LogprobsResultCopyWith(
          LogprobsResult value, $Res Function(LogprobsResult) _then) =
      _$LogprobsResultCopyWithImpl;
  @useResult
  $Res call(
      {List<TopCandidates>? topCandidates, List<Candidate>? chosenCandidates});
}

/// @nodoc
class _$LogprobsResultCopyWithImpl<$Res>
    implements $LogprobsResultCopyWith<$Res> {
  _$LogprobsResultCopyWithImpl(this._self, this._then);

  final LogprobsResult _self;
  final $Res Function(LogprobsResult) _then;

  /// Create a copy of LogprobsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topCandidates = freezed,
    Object? chosenCandidates = freezed,
  }) {
    return _then(_self.copyWith(
      topCandidates: freezed == topCandidates
          ? _self.topCandidates
          : topCandidates // ignore: cast_nullable_to_non_nullable
              as List<TopCandidates>?,
      chosenCandidates: freezed == chosenCandidates
          ? _self.chosenCandidates
          : chosenCandidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LogprobsResult extends LogprobsResult {
  _LogprobsResult(
      {final List<TopCandidates>? topCandidates,
      final List<Candidate>? chosenCandidates})
      : _topCandidates = topCandidates,
        _chosenCandidates = chosenCandidates,
        super._();
  factory _LogprobsResult.fromJson(Map<String, dynamic> json) =>
      _$LogprobsResultFromJson(json);

  final List<TopCandidates>? _topCandidates;
  @override
  List<TopCandidates>? get topCandidates {
    final value = _topCandidates;
    if (value == null) return null;
    if (_topCandidates is EqualUnmodifiableListView) return _topCandidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Candidate>? _chosenCandidates;
  @override
  List<Candidate>? get chosenCandidates {
    final value = _chosenCandidates;
    if (value == null) return null;
    if (_chosenCandidates is EqualUnmodifiableListView)
      return _chosenCandidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of LogprobsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogprobsResultCopyWith<_LogprobsResult> get copyWith =>
      __$LogprobsResultCopyWithImpl<_LogprobsResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LogprobsResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogprobsResult &&
            const DeepCollectionEquality()
                .equals(other._topCandidates, _topCandidates) &&
            const DeepCollectionEquality()
                .equals(other._chosenCandidates, _chosenCandidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topCandidates),
      const DeepCollectionEquality().hash(_chosenCandidates));

  @override
  String toString() {
    return 'LogprobsResult(topCandidates: $topCandidates, chosenCandidates: $chosenCandidates)';
  }
}

/// @nodoc
abstract mixin class _$LogprobsResultCopyWith<$Res>
    implements $LogprobsResultCopyWith<$Res> {
  factory _$LogprobsResultCopyWith(
          _LogprobsResult value, $Res Function(_LogprobsResult) _then) =
      __$LogprobsResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<TopCandidates>? topCandidates, List<Candidate>? chosenCandidates});
}

/// @nodoc
class __$LogprobsResultCopyWithImpl<$Res>
    implements _$LogprobsResultCopyWith<$Res> {
  __$LogprobsResultCopyWithImpl(this._self, this._then);

  final _LogprobsResult _self;
  final $Res Function(_LogprobsResult) _then;

  /// Create a copy of LogprobsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topCandidates = freezed,
    Object? chosenCandidates = freezed,
  }) {
    return _then(_LogprobsResult(
      topCandidates: freezed == topCandidates
          ? _self._topCandidates
          : topCandidates // ignore: cast_nullable_to_non_nullable
              as List<TopCandidates>?,
      chosenCandidates: freezed == chosenCandidates
          ? _self._chosenCandidates
          : chosenCandidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ));
  }
}

// dart format on
