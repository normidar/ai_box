// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoMetadata {
  String? get startOffset;
  String? get endOffset;
  num? get fps;

  /// Create a copy of VideoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoMetadataCopyWith<VideoMetadata> get copyWith =>
      _$VideoMetadataCopyWithImpl<VideoMetadata>(
          this as VideoMetadata, _$identity);

  /// Serializes this VideoMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoMetadata &&
            (identical(other.startOffset, startOffset) ||
                other.startOffset == startOffset) &&
            (identical(other.endOffset, endOffset) ||
                other.endOffset == endOffset) &&
            (identical(other.fps, fps) || other.fps == fps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startOffset, endOffset, fps);

  @override
  String toString() {
    return 'VideoMetadata(startOffset: $startOffset, endOffset: $endOffset, fps: $fps)';
  }
}

/// @nodoc
abstract mixin class $VideoMetadataCopyWith<$Res> {
  factory $VideoMetadataCopyWith(
          VideoMetadata value, $Res Function(VideoMetadata) _then) =
      _$VideoMetadataCopyWithImpl;
  @useResult
  $Res call({String? startOffset, String? endOffset, num? fps});
}

/// @nodoc
class _$VideoMetadataCopyWithImpl<$Res>
    implements $VideoMetadataCopyWith<$Res> {
  _$VideoMetadataCopyWithImpl(this._self, this._then);

  final VideoMetadata _self;
  final $Res Function(VideoMetadata) _then;

  /// Create a copy of VideoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startOffset = freezed,
    Object? endOffset = freezed,
    Object? fps = freezed,
  }) {
    return _then(_self.copyWith(
      startOffset: freezed == startOffset
          ? _self.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as String?,
      endOffset: freezed == endOffset
          ? _self.endOffset
          : endOffset // ignore: cast_nullable_to_non_nullable
              as String?,
      fps: freezed == fps
          ? _self.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VideoMetadata extends VideoMetadata {
  _VideoMetadata({this.startOffset, this.endOffset, this.fps}) : super._();
  factory _VideoMetadata.fromJson(Map<String, dynamic> json) =>
      _$VideoMetadataFromJson(json);

  @override
  final String? startOffset;
  @override
  final String? endOffset;
  @override
  final num? fps;

  /// Create a copy of VideoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoMetadataCopyWith<_VideoMetadata> get copyWith =>
      __$VideoMetadataCopyWithImpl<_VideoMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoMetadata &&
            (identical(other.startOffset, startOffset) ||
                other.startOffset == startOffset) &&
            (identical(other.endOffset, endOffset) ||
                other.endOffset == endOffset) &&
            (identical(other.fps, fps) || other.fps == fps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startOffset, endOffset, fps);

  @override
  String toString() {
    return 'VideoMetadata(startOffset: $startOffset, endOffset: $endOffset, fps: $fps)';
  }
}

/// @nodoc
abstract mixin class _$VideoMetadataCopyWith<$Res>
    implements $VideoMetadataCopyWith<$Res> {
  factory _$VideoMetadataCopyWith(
          _VideoMetadata value, $Res Function(_VideoMetadata) _then) =
      __$VideoMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({String? startOffset, String? endOffset, num? fps});
}

/// @nodoc
class __$VideoMetadataCopyWithImpl<$Res>
    implements _$VideoMetadataCopyWith<$Res> {
  __$VideoMetadataCopyWithImpl(this._self, this._then);

  final _VideoMetadata _self;
  final $Res Function(_VideoMetadata) _then;

  /// Create a copy of VideoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startOffset = freezed,
    Object? endOffset = freezed,
    Object? fps = freezed,
  }) {
    return _then(_VideoMetadata(
      startOffset: freezed == startOffset
          ? _self.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as String?,
      endOffset: freezed == endOffset
          ? _self.endOffset
          : endOffset // ignore: cast_nullable_to_non_nullable
              as String?,
      fps: freezed == fps
          ? _self.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

// dart format on
