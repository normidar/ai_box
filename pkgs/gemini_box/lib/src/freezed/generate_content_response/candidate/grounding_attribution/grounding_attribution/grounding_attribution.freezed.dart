// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grounding_attribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroundingAttribution {
  AttributionSourceId? get sourceId;
  Content? get content;

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroundingAttributionCopyWith<GroundingAttribution> get copyWith =>
      _$GroundingAttributionCopyWithImpl<GroundingAttribution>(
          this as GroundingAttribution, _$identity);

  /// Serializes this GroundingAttribution to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundingAttribution &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceId, content);

  @override
  String toString() {
    return 'GroundingAttribution(sourceId: $sourceId, content: $content)';
  }
}

/// @nodoc
abstract mixin class $GroundingAttributionCopyWith<$Res> {
  factory $GroundingAttributionCopyWith(GroundingAttribution value,
          $Res Function(GroundingAttribution) _then) =
      _$GroundingAttributionCopyWithImpl;
  @useResult
  $Res call({AttributionSourceId? sourceId, Content? content});

  $AttributionSourceIdCopyWith<$Res>? get sourceId;
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$GroundingAttributionCopyWithImpl<$Res>
    implements $GroundingAttributionCopyWith<$Res> {
  _$GroundingAttributionCopyWithImpl(this._self, this._then);

  final GroundingAttribution _self;
  final $Res Function(GroundingAttribution) _then;

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = freezed,
    Object? content = freezed,
  }) {
    return _then(_self.copyWith(
      sourceId: freezed == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as AttributionSourceId?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
    ));
  }

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionSourceIdCopyWith<$Res>? get sourceId {
    if (_self.sourceId == null) {
      return null;
    }

    return $AttributionSourceIdCopyWith<$Res>(_self.sourceId!, (value) {
      return _then(_self.copyWith(sourceId: value));
    });
  }

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GroundingAttribution extends GroundingAttribution {
  _GroundingAttribution({this.sourceId, this.content}) : super._();
  factory _GroundingAttribution.fromJson(Map<String, dynamic> json) =>
      _$GroundingAttributionFromJson(json);

  @override
  final AttributionSourceId? sourceId;
  @override
  final Content? content;

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroundingAttributionCopyWith<_GroundingAttribution> get copyWith =>
      __$GroundingAttributionCopyWithImpl<_GroundingAttribution>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroundingAttributionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroundingAttribution &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceId, content);

  @override
  String toString() {
    return 'GroundingAttribution(sourceId: $sourceId, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$GroundingAttributionCopyWith<$Res>
    implements $GroundingAttributionCopyWith<$Res> {
  factory _$GroundingAttributionCopyWith(_GroundingAttribution value,
          $Res Function(_GroundingAttribution) _then) =
      __$GroundingAttributionCopyWithImpl;
  @override
  @useResult
  $Res call({AttributionSourceId? sourceId, Content? content});

  @override
  $AttributionSourceIdCopyWith<$Res>? get sourceId;
  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$GroundingAttributionCopyWithImpl<$Res>
    implements _$GroundingAttributionCopyWith<$Res> {
  __$GroundingAttributionCopyWithImpl(this._self, this._then);

  final _GroundingAttribution _self;
  final $Res Function(_GroundingAttribution) _then;

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sourceId = freezed,
    Object? content = freezed,
  }) {
    return _then(_GroundingAttribution(
      sourceId: freezed == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as AttributionSourceId?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
    ));
  }

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionSourceIdCopyWith<$Res>? get sourceId {
    if (_self.sourceId == null) {
      return null;
    }

    return $AttributionSourceIdCopyWith<$Res>(_self.sourceId!, (value) {
      return _then(_self.copyWith(sourceId: value));
    });
  }

  /// Create a copy of GroundingAttribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

// dart format on
