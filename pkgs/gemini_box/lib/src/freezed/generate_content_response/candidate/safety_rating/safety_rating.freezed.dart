// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafetyRating {
  HarmCategory get category;
  HarmProbability get probability;
  bool? get blocked;

  /// Create a copy of SafetyRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SafetyRatingCopyWith<SafetyRating> get copyWith =>
      _$SafetyRatingCopyWithImpl<SafetyRating>(
          this as SafetyRating, _$identity);

  /// Serializes this SafetyRating to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SafetyRating &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            (identical(other.blocked, blocked) || other.blocked == blocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, probability, blocked);

  @override
  String toString() {
    return 'SafetyRating(category: $category, probability: $probability, blocked: $blocked)';
  }
}

/// @nodoc
abstract mixin class $SafetyRatingCopyWith<$Res> {
  factory $SafetyRatingCopyWith(
          SafetyRating value, $Res Function(SafetyRating) _then) =
      _$SafetyRatingCopyWithImpl;
  @useResult
  $Res call(
      {HarmCategory category, HarmProbability probability, bool? blocked});
}

/// @nodoc
class _$SafetyRatingCopyWithImpl<$Res> implements $SafetyRatingCopyWith<$Res> {
  _$SafetyRatingCopyWithImpl(this._self, this._then);

  final SafetyRating _self;
  final $Res Function(SafetyRating) _then;

  /// Create a copy of SafetyRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? probability = null,
    Object? blocked = freezed,
  }) {
    return _then(_self.copyWith(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as HarmCategory,
      probability: null == probability
          ? _self.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as HarmProbability,
      blocked: freezed == blocked
          ? _self.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SafetyRating extends SafetyRating {
  _SafetyRating(
      {required this.category, required this.probability, this.blocked})
      : super._();
  factory _SafetyRating.fromJson(Map<String, dynamic> json) =>
      _$SafetyRatingFromJson(json);

  @override
  final HarmCategory category;
  @override
  final HarmProbability probability;
  @override
  final bool? blocked;

  /// Create a copy of SafetyRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SafetyRatingCopyWith<_SafetyRating> get copyWith =>
      __$SafetyRatingCopyWithImpl<_SafetyRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SafetyRatingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SafetyRating &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            (identical(other.blocked, blocked) || other.blocked == blocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, probability, blocked);

  @override
  String toString() {
    return 'SafetyRating(category: $category, probability: $probability, blocked: $blocked)';
  }
}

/// @nodoc
abstract mixin class _$SafetyRatingCopyWith<$Res>
    implements $SafetyRatingCopyWith<$Res> {
  factory _$SafetyRatingCopyWith(
          _SafetyRating value, $Res Function(_SafetyRating) _then) =
      __$SafetyRatingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HarmCategory category, HarmProbability probability, bool? blocked});
}

/// @nodoc
class __$SafetyRatingCopyWithImpl<$Res>
    implements _$SafetyRatingCopyWith<$Res> {
  __$SafetyRatingCopyWithImpl(this._self, this._then);

  final _SafetyRating _self;
  final $Res Function(_SafetyRating) _then;

  /// Create a copy of SafetyRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? probability = null,
    Object? blocked = freezed,
  }) {
    return _then(_SafetyRating(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as HarmCategory,
      probability: null == probability
          ? _self.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as HarmProbability,
      blocked: freezed == blocked
          ? _self.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
