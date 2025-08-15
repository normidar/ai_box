// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'segment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Segment {
  int? get partIndex;
  int? get startIndex;
  int? get endIndex;
  String? get text;

  /// Create a copy of Segment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SegmentCopyWith<Segment> get copyWith =>
      _$SegmentCopyWithImpl<Segment>(this as Segment, _$identity);

  /// Serializes this Segment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Segment &&
            (identical(other.partIndex, partIndex) ||
                other.partIndex == partIndex) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, partIndex, startIndex, endIndex, text);

  @override
  String toString() {
    return 'Segment(partIndex: $partIndex, startIndex: $startIndex, endIndex: $endIndex, text: $text)';
  }
}

/// @nodoc
abstract mixin class $SegmentCopyWith<$Res> {
  factory $SegmentCopyWith(Segment value, $Res Function(Segment) _then) =
      _$SegmentCopyWithImpl;
  @useResult
  $Res call({int? partIndex, int? startIndex, int? endIndex, String? text});
}

/// @nodoc
class _$SegmentCopyWithImpl<$Res> implements $SegmentCopyWith<$Res> {
  _$SegmentCopyWithImpl(this._self, this._then);

  final Segment _self;
  final $Res Function(Segment) _then;

  /// Create a copy of Segment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partIndex = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? text = freezed,
  }) {
    return _then(_self.copyWith(
      partIndex: freezed == partIndex
          ? _self.partIndex
          : partIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startIndex: freezed == startIndex
          ? _self.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _self.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Segment extends Segment {
  _Segment({this.partIndex, this.startIndex, this.endIndex, this.text})
      : super._();
  factory _Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);

  @override
  final int? partIndex;
  @override
  final int? startIndex;
  @override
  final int? endIndex;
  @override
  final String? text;

  /// Create a copy of Segment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SegmentCopyWith<_Segment> get copyWith =>
      __$SegmentCopyWithImpl<_Segment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SegmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Segment &&
            (identical(other.partIndex, partIndex) ||
                other.partIndex == partIndex) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, partIndex, startIndex, endIndex, text);

  @override
  String toString() {
    return 'Segment(partIndex: $partIndex, startIndex: $startIndex, endIndex: $endIndex, text: $text)';
  }
}

/// @nodoc
abstract mixin class _$SegmentCopyWith<$Res> implements $SegmentCopyWith<$Res> {
  factory _$SegmentCopyWith(_Segment value, $Res Function(_Segment) _then) =
      __$SegmentCopyWithImpl;
  @override
  @useResult
  $Res call({int? partIndex, int? startIndex, int? endIndex, String? text});
}

/// @nodoc
class __$SegmentCopyWithImpl<$Res> implements _$SegmentCopyWith<$Res> {
  __$SegmentCopyWithImpl(this._self, this._then);

  final _Segment _self;
  final $Res Function(_Segment) _then;

  /// Create a copy of Segment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? partIndex = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? text = freezed,
  }) {
    return _then(_Segment(
      partIndex: freezed == partIndex
          ? _self.partIndex
          : partIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startIndex: freezed == startIndex
          ? _self.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _self.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
