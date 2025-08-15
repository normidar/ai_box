// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieval_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RetrievalMetadata {
  double? get googleSearchDynamicRetrievalScore;

  /// Create a copy of RetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RetrievalMetadataCopyWith<RetrievalMetadata> get copyWith =>
      _$RetrievalMetadataCopyWithImpl<RetrievalMetadata>(
          this as RetrievalMetadata, _$identity);

  /// Serializes this RetrievalMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RetrievalMetadata &&
            (identical(other.googleSearchDynamicRetrievalScore,
                    googleSearchDynamicRetrievalScore) ||
                other.googleSearchDynamicRetrievalScore ==
                    googleSearchDynamicRetrievalScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, googleSearchDynamicRetrievalScore);

  @override
  String toString() {
    return 'RetrievalMetadata(googleSearchDynamicRetrievalScore: $googleSearchDynamicRetrievalScore)';
  }
}

/// @nodoc
abstract mixin class $RetrievalMetadataCopyWith<$Res> {
  factory $RetrievalMetadataCopyWith(
          RetrievalMetadata value, $Res Function(RetrievalMetadata) _then) =
      _$RetrievalMetadataCopyWithImpl;
  @useResult
  $Res call({double? googleSearchDynamicRetrievalScore});
}

/// @nodoc
class _$RetrievalMetadataCopyWithImpl<$Res>
    implements $RetrievalMetadataCopyWith<$Res> {
  _$RetrievalMetadataCopyWithImpl(this._self, this._then);

  final RetrievalMetadata _self;
  final $Res Function(RetrievalMetadata) _then;

  /// Create a copy of RetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleSearchDynamicRetrievalScore = freezed,
  }) {
    return _then(_self.copyWith(
      googleSearchDynamicRetrievalScore: freezed ==
              googleSearchDynamicRetrievalScore
          ? _self.googleSearchDynamicRetrievalScore
          : googleSearchDynamicRetrievalScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RetrievalMetadata extends RetrievalMetadata {
  _RetrievalMetadata({this.googleSearchDynamicRetrievalScore}) : super._();
  factory _RetrievalMetadata.fromJson(Map<String, dynamic> json) =>
      _$RetrievalMetadataFromJson(json);

  @override
  final double? googleSearchDynamicRetrievalScore;

  /// Create a copy of RetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RetrievalMetadataCopyWith<_RetrievalMetadata> get copyWith =>
      __$RetrievalMetadataCopyWithImpl<_RetrievalMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RetrievalMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetrievalMetadata &&
            (identical(other.googleSearchDynamicRetrievalScore,
                    googleSearchDynamicRetrievalScore) ||
                other.googleSearchDynamicRetrievalScore ==
                    googleSearchDynamicRetrievalScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, googleSearchDynamicRetrievalScore);

  @override
  String toString() {
    return 'RetrievalMetadata(googleSearchDynamicRetrievalScore: $googleSearchDynamicRetrievalScore)';
  }
}

/// @nodoc
abstract mixin class _$RetrievalMetadataCopyWith<$Res>
    implements $RetrievalMetadataCopyWith<$Res> {
  factory _$RetrievalMetadataCopyWith(
          _RetrievalMetadata value, $Res Function(_RetrievalMetadata) _then) =
      __$RetrievalMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({double? googleSearchDynamicRetrievalScore});
}

/// @nodoc
class __$RetrievalMetadataCopyWithImpl<$Res>
    implements _$RetrievalMetadataCopyWith<$Res> {
  __$RetrievalMetadataCopyWithImpl(this._self, this._then);

  final _RetrievalMetadata _self;
  final $Res Function(_RetrievalMetadata) _then;

  /// Create a copy of RetrievalMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? googleSearchDynamicRetrievalScore = freezed,
  }) {
    return _then(_RetrievalMetadata(
      googleSearchDynamicRetrievalScore: freezed ==
              googleSearchDynamicRetrievalScore
          ? _self.googleSearchDynamicRetrievalScore
          : googleSearchDynamicRetrievalScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
