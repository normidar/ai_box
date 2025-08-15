// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grounding_passage_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroundingPassageId {
  String? get passageId;
  int? get partIndex;

  /// Create a copy of GroundingPassageId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroundingPassageIdCopyWith<GroundingPassageId> get copyWith =>
      _$GroundingPassageIdCopyWithImpl<GroundingPassageId>(
          this as GroundingPassageId, _$identity);

  /// Serializes this GroundingPassageId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundingPassageId &&
            (identical(other.passageId, passageId) ||
                other.passageId == passageId) &&
            (identical(other.partIndex, partIndex) ||
                other.partIndex == partIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, passageId, partIndex);

  @override
  String toString() {
    return 'GroundingPassageId(passageId: $passageId, partIndex: $partIndex)';
  }
}

/// @nodoc
abstract mixin class $GroundingPassageIdCopyWith<$Res> {
  factory $GroundingPassageIdCopyWith(
          GroundingPassageId value, $Res Function(GroundingPassageId) _then) =
      _$GroundingPassageIdCopyWithImpl;
  @useResult
  $Res call({String? passageId, int? partIndex});
}

/// @nodoc
class _$GroundingPassageIdCopyWithImpl<$Res>
    implements $GroundingPassageIdCopyWith<$Res> {
  _$GroundingPassageIdCopyWithImpl(this._self, this._then);

  final GroundingPassageId _self;
  final $Res Function(GroundingPassageId) _then;

  /// Create a copy of GroundingPassageId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passageId = freezed,
    Object? partIndex = freezed,
  }) {
    return _then(_self.copyWith(
      passageId: freezed == passageId
          ? _self.passageId
          : passageId // ignore: cast_nullable_to_non_nullable
              as String?,
      partIndex: freezed == partIndex
          ? _self.partIndex
          : partIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GroundingPassageId extends GroundingPassageId {
  _GroundingPassageId({this.passageId, this.partIndex}) : super._();
  factory _GroundingPassageId.fromJson(Map<String, dynamic> json) =>
      _$GroundingPassageIdFromJson(json);

  @override
  final String? passageId;
  @override
  final int? partIndex;

  /// Create a copy of GroundingPassageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroundingPassageIdCopyWith<_GroundingPassageId> get copyWith =>
      __$GroundingPassageIdCopyWithImpl<_GroundingPassageId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroundingPassageIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroundingPassageId &&
            (identical(other.passageId, passageId) ||
                other.passageId == passageId) &&
            (identical(other.partIndex, partIndex) ||
                other.partIndex == partIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, passageId, partIndex);

  @override
  String toString() {
    return 'GroundingPassageId(passageId: $passageId, partIndex: $partIndex)';
  }
}

/// @nodoc
abstract mixin class _$GroundingPassageIdCopyWith<$Res>
    implements $GroundingPassageIdCopyWith<$Res> {
  factory _$GroundingPassageIdCopyWith(
          _GroundingPassageId value, $Res Function(_GroundingPassageId) _then) =
      __$GroundingPassageIdCopyWithImpl;
  @override
  @useResult
  $Res call({String? passageId, int? partIndex});
}

/// @nodoc
class __$GroundingPassageIdCopyWithImpl<$Res>
    implements _$GroundingPassageIdCopyWith<$Res> {
  __$GroundingPassageIdCopyWithImpl(this._self, this._then);

  final _GroundingPassageId _self;
  final $Res Function(_GroundingPassageId) _then;

  /// Create a copy of GroundingPassageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? passageId = freezed,
    Object? partIndex = freezed,
  }) {
    return _then(_GroundingPassageId(
      passageId: freezed == passageId
          ? _self.passageId
          : passageId // ignore: cast_nullable_to_non_nullable
              as String?,
      partIndex: freezed == partIndex
          ? _self.partIndex
          : partIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
