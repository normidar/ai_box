// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_content_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateContentResponse {
  List<Candidate>?
      get candidates; // Feedback on the prompt specified in GenerateContentRequest.
  Map<String, dynamic>?
      get promptFeedback; // Metadata on the generation requests' token usage.
  UsageMetadata?
      get usageMetadata; // The model version used to generate the response.
  String? get modelVersion; // A unique identifier for the response.
  String? get responseId;

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenerateContentResponseCopyWith<GenerateContentResponse> get copyWith =>
      _$GenerateContentResponseCopyWithImpl<GenerateContentResponse>(
          this as GenerateContentResponse, _$identity);

  /// Serializes this GenerateContentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateContentResponse &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates) &&
            const DeepCollectionEquality()
                .equals(other.promptFeedback, promptFeedback) &&
            (identical(other.usageMetadata, usageMetadata) ||
                other.usageMetadata == usageMetadata) &&
            (identical(other.modelVersion, modelVersion) ||
                other.modelVersion == modelVersion) &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(candidates),
      const DeepCollectionEquality().hash(promptFeedback),
      usageMetadata,
      modelVersion,
      responseId);

  @override
  String toString() {
    return 'GenerateContentResponse(candidates: $candidates, promptFeedback: $promptFeedback, usageMetadata: $usageMetadata, modelVersion: $modelVersion, responseId: $responseId)';
  }
}

/// @nodoc
abstract mixin class $GenerateContentResponseCopyWith<$Res> {
  factory $GenerateContentResponseCopyWith(GenerateContentResponse value,
          $Res Function(GenerateContentResponse) _then) =
      _$GenerateContentResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<Candidate>? candidates,
      Map<String, dynamic>? promptFeedback,
      UsageMetadata? usageMetadata,
      String? modelVersion,
      String? responseId});

  $UsageMetadataCopyWith<$Res>? get usageMetadata;
}

/// @nodoc
class _$GenerateContentResponseCopyWithImpl<$Res>
    implements $GenerateContentResponseCopyWith<$Res> {
  _$GenerateContentResponseCopyWithImpl(this._self, this._then);

  final GenerateContentResponse _self;
  final $Res Function(GenerateContentResponse) _then;

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = freezed,
    Object? promptFeedback = freezed,
    Object? usageMetadata = freezed,
    Object? modelVersion = freezed,
    Object? responseId = freezed,
  }) {
    return _then(_self.copyWith(
      candidates: freezed == candidates
          ? _self.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
      promptFeedback: freezed == promptFeedback
          ? _self.promptFeedback
          : promptFeedback // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      usageMetadata: freezed == usageMetadata
          ? _self.usageMetadata
          : usageMetadata // ignore: cast_nullable_to_non_nullable
              as UsageMetadata?,
      modelVersion: freezed == modelVersion
          ? _self.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      responseId: freezed == responseId
          ? _self.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageMetadataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
      return null;
    }

    return $UsageMetadataCopyWith<$Res>(_self.usageMetadata!, (value) {
      return _then(_self.copyWith(usageMetadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GenerateContentResponse extends GenerateContentResponse {
  _GenerateContentResponse(
      {final List<Candidate>? candidates,
      final Map<String, dynamic>? promptFeedback,
      this.usageMetadata,
      this.modelVersion,
      this.responseId})
      : _candidates = candidates,
        _promptFeedback = promptFeedback,
        super._();
  factory _GenerateContentResponse.fromJson(Map<String, dynamic> json) =>
      _$GenerateContentResponseFromJson(json);

  final List<Candidate>? _candidates;
  @override
  List<Candidate>? get candidates {
    final value = _candidates;
    if (value == null) return null;
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Feedback on the prompt specified in GenerateContentRequest.
  final Map<String, dynamic>? _promptFeedback;
// Feedback on the prompt specified in GenerateContentRequest.
  @override
  Map<String, dynamic>? get promptFeedback {
    final value = _promptFeedback;
    if (value == null) return null;
    if (_promptFeedback is EqualUnmodifiableMapView) return _promptFeedback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// Metadata on the generation requests' token usage.
  @override
  final UsageMetadata? usageMetadata;
// The model version used to generate the response.
  @override
  final String? modelVersion;
// A unique identifier for the response.
  @override
  final String? responseId;

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenerateContentResponseCopyWith<_GenerateContentResponse> get copyWith =>
      __$GenerateContentResponseCopyWithImpl<_GenerateContentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenerateContentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenerateContentResponse &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            const DeepCollectionEquality()
                .equals(other._promptFeedback, _promptFeedback) &&
            (identical(other.usageMetadata, usageMetadata) ||
                other.usageMetadata == usageMetadata) &&
            (identical(other.modelVersion, modelVersion) ||
                other.modelVersion == modelVersion) &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_candidates),
      const DeepCollectionEquality().hash(_promptFeedback),
      usageMetadata,
      modelVersion,
      responseId);

  @override
  String toString() {
    return 'GenerateContentResponse(candidates: $candidates, promptFeedback: $promptFeedback, usageMetadata: $usageMetadata, modelVersion: $modelVersion, responseId: $responseId)';
  }
}

/// @nodoc
abstract mixin class _$GenerateContentResponseCopyWith<$Res>
    implements $GenerateContentResponseCopyWith<$Res> {
  factory _$GenerateContentResponseCopyWith(_GenerateContentResponse value,
          $Res Function(_GenerateContentResponse) _then) =
      __$GenerateContentResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Candidate>? candidates,
      Map<String, dynamic>? promptFeedback,
      UsageMetadata? usageMetadata,
      String? modelVersion,
      String? responseId});

  @override
  $UsageMetadataCopyWith<$Res>? get usageMetadata;
}

/// @nodoc
class __$GenerateContentResponseCopyWithImpl<$Res>
    implements _$GenerateContentResponseCopyWith<$Res> {
  __$GenerateContentResponseCopyWithImpl(this._self, this._then);

  final _GenerateContentResponse _self;
  final $Res Function(_GenerateContentResponse) _then;

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? candidates = freezed,
    Object? promptFeedback = freezed,
    Object? usageMetadata = freezed,
    Object? modelVersion = freezed,
    Object? responseId = freezed,
  }) {
    return _then(_GenerateContentResponse(
      candidates: freezed == candidates
          ? _self._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
      promptFeedback: freezed == promptFeedback
          ? _self._promptFeedback
          : promptFeedback // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      usageMetadata: freezed == usageMetadata
          ? _self.usageMetadata
          : usageMetadata // ignore: cast_nullable_to_non_nullable
              as UsageMetadata?,
      modelVersion: freezed == modelVersion
          ? _self.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      responseId: freezed == responseId
          ? _self.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GenerateContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageMetadataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
      return null;
    }

    return $UsageMetadataCopyWith<$Res>(_self.usageMetadata!, (value) {
      return _then(_self.copyWith(usageMetadata: value));
    });
  }
}

// dart format on
