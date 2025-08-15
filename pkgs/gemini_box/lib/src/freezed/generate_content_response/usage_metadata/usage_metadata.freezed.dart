// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModalityTokenCount {
  /// The modality of the tokens.
  Modality get modality;

  /// The number of tokens for this modality.
  int get tokenCount;

  /// Create a copy of ModalityTokenCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModalityTokenCountCopyWith<ModalityTokenCount> get copyWith =>
      _$ModalityTokenCountCopyWithImpl<ModalityTokenCount>(
          this as ModalityTokenCount, _$identity);

  /// Serializes this ModalityTokenCount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModalityTokenCount &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, modality, tokenCount);

  @override
  String toString() {
    return 'ModalityTokenCount(modality: $modality, tokenCount: $tokenCount)';
  }
}

/// @nodoc
abstract mixin class $ModalityTokenCountCopyWith<$Res> {
  factory $ModalityTokenCountCopyWith(
          ModalityTokenCount value, $Res Function(ModalityTokenCount) _then) =
      _$ModalityTokenCountCopyWithImpl;
  @useResult
  $Res call({Modality modality, int tokenCount});
}

/// @nodoc
class _$ModalityTokenCountCopyWithImpl<$Res>
    implements $ModalityTokenCountCopyWith<$Res> {
  _$ModalityTokenCountCopyWithImpl(this._self, this._then);

  final ModalityTokenCount _self;
  final $Res Function(ModalityTokenCount) _then;

  /// Create a copy of ModalityTokenCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_self.copyWith(
      modality: null == modality
          ? _self.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as Modality,
      tokenCount: null == tokenCount
          ? _self.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModalityTokenCount extends ModalityTokenCount {
  _ModalityTokenCount({required this.modality, required this.tokenCount})
      : super._();
  factory _ModalityTokenCount.fromJson(Map<String, dynamic> json) =>
      _$ModalityTokenCountFromJson(json);

  /// The modality of the tokens.
  @override
  final Modality modality;

  /// The number of tokens for this modality.
  @override
  final int tokenCount;

  /// Create a copy of ModalityTokenCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModalityTokenCountCopyWith<_ModalityTokenCount> get copyWith =>
      __$ModalityTokenCountCopyWithImpl<_ModalityTokenCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModalityTokenCountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModalityTokenCount &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, modality, tokenCount);

  @override
  String toString() {
    return 'ModalityTokenCount(modality: $modality, tokenCount: $tokenCount)';
  }
}

/// @nodoc
abstract mixin class _$ModalityTokenCountCopyWith<$Res>
    implements $ModalityTokenCountCopyWith<$Res> {
  factory _$ModalityTokenCountCopyWith(
          _ModalityTokenCount value, $Res Function(_ModalityTokenCount) _then) =
      __$ModalityTokenCountCopyWithImpl;
  @override
  @useResult
  $Res call({Modality modality, int tokenCount});
}

/// @nodoc
class __$ModalityTokenCountCopyWithImpl<$Res>
    implements _$ModalityTokenCountCopyWith<$Res> {
  __$ModalityTokenCountCopyWithImpl(this._self, this._then);

  final _ModalityTokenCount _self;
  final $Res Function(_ModalityTokenCount) _then;

  /// Create a copy of ModalityTokenCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_ModalityTokenCount(
      modality: null == modality
          ? _self.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as Modality,
      tokenCount: null == tokenCount
          ? _self.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UsageMetadata {
  /// The number of tokens in the prompt.
  int? get promptTokenCount;

  /// Number of tokens in the cached part of the prompt.
  int? get cachedContentTokenCount;

  /// Total number of tokens across all the generated response candidates.
  int? get candidatesTokenCount;

  /// Number of tokens in the tool use prompt.
  int? get toolUsePromptTokenCount;

  /// Number of tokens in the thoughts.
  int? get thoughtsTokenCount;

  /// Total token count for the generation request
  ///  (prompt + response candidates).
  int? get totalTokenCount;

  /// Breakdown of tokens used in the prompt for different modalities.
  List<ModalityTokenCount>? get promptTokensDetails;

  /// Breakdown of tokens used in the cached content for different modalities.
  List<ModalityTokenCount>? get cacheTokensDetails;

  /// Breakdown of tokens used in the candidates for different modalities.
  List<ModalityTokenCount>? get candidatesTokensDetails;

  /// Breakdown of tokens used in the tool use prompt
  ///  for different modalities.
  List<ModalityTokenCount>? get toolUsePromptTokensDetails;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsageMetadataCopyWith<UsageMetadata> get copyWith =>
      _$UsageMetadataCopyWithImpl<UsageMetadata>(
          this as UsageMetadata, _$identity);

  /// Serializes this UsageMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsageMetadata &&
            (identical(other.promptTokenCount, promptTokenCount) ||
                other.promptTokenCount == promptTokenCount) &&
            (identical(
                    other.cachedContentTokenCount, cachedContentTokenCount) ||
                other.cachedContentTokenCount == cachedContentTokenCount) &&
            (identical(other.candidatesTokenCount, candidatesTokenCount) ||
                other.candidatesTokenCount == candidatesTokenCount) &&
            (identical(
                    other.toolUsePromptTokenCount, toolUsePromptTokenCount) ||
                other.toolUsePromptTokenCount == toolUsePromptTokenCount) &&
            (identical(other.thoughtsTokenCount, thoughtsTokenCount) ||
                other.thoughtsTokenCount == thoughtsTokenCount) &&
            (identical(other.totalTokenCount, totalTokenCount) ||
                other.totalTokenCount == totalTokenCount) &&
            const DeepCollectionEquality()
                .equals(other.promptTokensDetails, promptTokensDetails) &&
            const DeepCollectionEquality()
                .equals(other.cacheTokensDetails, cacheTokensDetails) &&
            const DeepCollectionEquality().equals(
                other.candidatesTokensDetails, candidatesTokensDetails) &&
            const DeepCollectionEquality().equals(
                other.toolUsePromptTokensDetails, toolUsePromptTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      promptTokenCount,
      cachedContentTokenCount,
      candidatesTokenCount,
      toolUsePromptTokenCount,
      thoughtsTokenCount,
      totalTokenCount,
      const DeepCollectionEquality().hash(promptTokensDetails),
      const DeepCollectionEquality().hash(cacheTokensDetails),
      const DeepCollectionEquality().hash(candidatesTokensDetails),
      const DeepCollectionEquality().hash(toolUsePromptTokensDetails));

  @override
  String toString() {
    return 'UsageMetadata(promptTokenCount: $promptTokenCount, cachedContentTokenCount: $cachedContentTokenCount, candidatesTokenCount: $candidatesTokenCount, toolUsePromptTokenCount: $toolUsePromptTokenCount, thoughtsTokenCount: $thoughtsTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, cacheTokensDetails: $cacheTokensDetails, candidatesTokensDetails: $candidatesTokensDetails, toolUsePromptTokensDetails: $toolUsePromptTokensDetails)';
  }
}

/// @nodoc
abstract mixin class $UsageMetadataCopyWith<$Res> {
  factory $UsageMetadataCopyWith(
          UsageMetadata value, $Res Function(UsageMetadata) _then) =
      _$UsageMetadataCopyWithImpl;
  @useResult
  $Res call(
      {int? promptTokenCount,
      int? cachedContentTokenCount,
      int? candidatesTokenCount,
      int? toolUsePromptTokenCount,
      int? thoughtsTokenCount,
      int? totalTokenCount,
      List<ModalityTokenCount>? promptTokensDetails,
      List<ModalityTokenCount>? cacheTokensDetails,
      List<ModalityTokenCount>? candidatesTokensDetails,
      List<ModalityTokenCount>? toolUsePromptTokensDetails});
}

/// @nodoc
class _$UsageMetadataCopyWithImpl<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  _$UsageMetadataCopyWithImpl(this._self, this._then);

  final UsageMetadata _self;
  final $Res Function(UsageMetadata) _then;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokenCount = freezed,
    Object? cachedContentTokenCount = freezed,
    Object? candidatesTokenCount = freezed,
    Object? toolUsePromptTokenCount = freezed,
    Object? thoughtsTokenCount = freezed,
    Object? totalTokenCount = freezed,
    Object? promptTokensDetails = freezed,
    Object? cacheTokensDetails = freezed,
    Object? candidatesTokensDetails = freezed,
    Object? toolUsePromptTokensDetails = freezed,
  }) {
    return _then(_self.copyWith(
      promptTokenCount: freezed == promptTokenCount
          ? _self.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cachedContentTokenCount: freezed == cachedContentTokenCount
          ? _self.cachedContentTokenCount
          : cachedContentTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      candidatesTokenCount: freezed == candidatesTokenCount
          ? _self.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      toolUsePromptTokenCount: freezed == toolUsePromptTokenCount
          ? _self.toolUsePromptTokenCount
          : toolUsePromptTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thoughtsTokenCount: freezed == thoughtsTokenCount
          ? _self.thoughtsTokenCount
          : thoughtsTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokenCount: freezed == totalTokenCount
          ? _self.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptTokensDetails: freezed == promptTokensDetails
          ? _self.promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      cacheTokensDetails: freezed == cacheTokensDetails
          ? _self.cacheTokensDetails
          : cacheTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      candidatesTokensDetails: freezed == candidatesTokensDetails
          ? _self.candidatesTokensDetails
          : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      toolUsePromptTokensDetails: freezed == toolUsePromptTokensDetails
          ? _self.toolUsePromptTokensDetails
          : toolUsePromptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UsageMetadata extends UsageMetadata {
  _UsageMetadata(
      {this.promptTokenCount,
      this.cachedContentTokenCount,
      this.candidatesTokenCount,
      this.toolUsePromptTokenCount,
      this.thoughtsTokenCount,
      this.totalTokenCount,
      final List<ModalityTokenCount>? promptTokensDetails,
      final List<ModalityTokenCount>? cacheTokensDetails,
      final List<ModalityTokenCount>? candidatesTokensDetails,
      final List<ModalityTokenCount>? toolUsePromptTokensDetails})
      : _promptTokensDetails = promptTokensDetails,
        _cacheTokensDetails = cacheTokensDetails,
        _candidatesTokensDetails = candidatesTokensDetails,
        _toolUsePromptTokensDetails = toolUsePromptTokensDetails,
        super._();
  factory _UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);

  /// The number of tokens in the prompt.
  @override
  final int? promptTokenCount;

  /// Number of tokens in the cached part of the prompt.
  @override
  final int? cachedContentTokenCount;

  /// Total number of tokens across all the generated response candidates.
  @override
  final int? candidatesTokenCount;

  /// Number of tokens in the tool use prompt.
  @override
  final int? toolUsePromptTokenCount;

  /// Number of tokens in the thoughts.
  @override
  final int? thoughtsTokenCount;

  /// Total token count for the generation request
  ///  (prompt + response candidates).
  @override
  final int? totalTokenCount;

  /// Breakdown of tokens used in the prompt for different modalities.
  final List<ModalityTokenCount>? _promptTokensDetails;

  /// Breakdown of tokens used in the prompt for different modalities.
  @override
  List<ModalityTokenCount>? get promptTokensDetails {
    final value = _promptTokensDetails;
    if (value == null) return null;
    if (_promptTokensDetails is EqualUnmodifiableListView)
      return _promptTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Breakdown of tokens used in the cached content for different modalities.
  final List<ModalityTokenCount>? _cacheTokensDetails;

  /// Breakdown of tokens used in the cached content for different modalities.
  @override
  List<ModalityTokenCount>? get cacheTokensDetails {
    final value = _cacheTokensDetails;
    if (value == null) return null;
    if (_cacheTokensDetails is EqualUnmodifiableListView)
      return _cacheTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Breakdown of tokens used in the candidates for different modalities.
  final List<ModalityTokenCount>? _candidatesTokensDetails;

  /// Breakdown of tokens used in the candidates for different modalities.
  @override
  List<ModalityTokenCount>? get candidatesTokensDetails {
    final value = _candidatesTokensDetails;
    if (value == null) return null;
    if (_candidatesTokensDetails is EqualUnmodifiableListView)
      return _candidatesTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Breakdown of tokens used in the tool use prompt
  ///  for different modalities.
  final List<ModalityTokenCount>? _toolUsePromptTokensDetails;

  /// Breakdown of tokens used in the tool use prompt
  ///  for different modalities.
  @override
  List<ModalityTokenCount>? get toolUsePromptTokensDetails {
    final value = _toolUsePromptTokensDetails;
    if (value == null) return null;
    if (_toolUsePromptTokensDetails is EqualUnmodifiableListView)
      return _toolUsePromptTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsageMetadataCopyWith<_UsageMetadata> get copyWith =>
      __$UsageMetadataCopyWithImpl<_UsageMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsageMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsageMetadata &&
            (identical(other.promptTokenCount, promptTokenCount) ||
                other.promptTokenCount == promptTokenCount) &&
            (identical(
                    other.cachedContentTokenCount, cachedContentTokenCount) ||
                other.cachedContentTokenCount == cachedContentTokenCount) &&
            (identical(other.candidatesTokenCount, candidatesTokenCount) ||
                other.candidatesTokenCount == candidatesTokenCount) &&
            (identical(
                    other.toolUsePromptTokenCount, toolUsePromptTokenCount) ||
                other.toolUsePromptTokenCount == toolUsePromptTokenCount) &&
            (identical(other.thoughtsTokenCount, thoughtsTokenCount) ||
                other.thoughtsTokenCount == thoughtsTokenCount) &&
            (identical(other.totalTokenCount, totalTokenCount) ||
                other.totalTokenCount == totalTokenCount) &&
            const DeepCollectionEquality()
                .equals(other._promptTokensDetails, _promptTokensDetails) &&
            const DeepCollectionEquality()
                .equals(other._cacheTokensDetails, _cacheTokensDetails) &&
            const DeepCollectionEquality().equals(
                other._candidatesTokensDetails, _candidatesTokensDetails) &&
            const DeepCollectionEquality().equals(
                other._toolUsePromptTokensDetails,
                _toolUsePromptTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      promptTokenCount,
      cachedContentTokenCount,
      candidatesTokenCount,
      toolUsePromptTokenCount,
      thoughtsTokenCount,
      totalTokenCount,
      const DeepCollectionEquality().hash(_promptTokensDetails),
      const DeepCollectionEquality().hash(_cacheTokensDetails),
      const DeepCollectionEquality().hash(_candidatesTokensDetails),
      const DeepCollectionEquality().hash(_toolUsePromptTokensDetails));

  @override
  String toString() {
    return 'UsageMetadata(promptTokenCount: $promptTokenCount, cachedContentTokenCount: $cachedContentTokenCount, candidatesTokenCount: $candidatesTokenCount, toolUsePromptTokenCount: $toolUsePromptTokenCount, thoughtsTokenCount: $thoughtsTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, cacheTokensDetails: $cacheTokensDetails, candidatesTokensDetails: $candidatesTokensDetails, toolUsePromptTokensDetails: $toolUsePromptTokensDetails)';
  }
}

/// @nodoc
abstract mixin class _$UsageMetadataCopyWith<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  factory _$UsageMetadataCopyWith(
          _UsageMetadata value, $Res Function(_UsageMetadata) _then) =
      __$UsageMetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? promptTokenCount,
      int? cachedContentTokenCount,
      int? candidatesTokenCount,
      int? toolUsePromptTokenCount,
      int? thoughtsTokenCount,
      int? totalTokenCount,
      List<ModalityTokenCount>? promptTokensDetails,
      List<ModalityTokenCount>? cacheTokensDetails,
      List<ModalityTokenCount>? candidatesTokensDetails,
      List<ModalityTokenCount>? toolUsePromptTokensDetails});
}

/// @nodoc
class __$UsageMetadataCopyWithImpl<$Res>
    implements _$UsageMetadataCopyWith<$Res> {
  __$UsageMetadataCopyWithImpl(this._self, this._then);

  final _UsageMetadata _self;
  final $Res Function(_UsageMetadata) _then;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? promptTokenCount = freezed,
    Object? cachedContentTokenCount = freezed,
    Object? candidatesTokenCount = freezed,
    Object? toolUsePromptTokenCount = freezed,
    Object? thoughtsTokenCount = freezed,
    Object? totalTokenCount = freezed,
    Object? promptTokensDetails = freezed,
    Object? cacheTokensDetails = freezed,
    Object? candidatesTokensDetails = freezed,
    Object? toolUsePromptTokensDetails = freezed,
  }) {
    return _then(_UsageMetadata(
      promptTokenCount: freezed == promptTokenCount
          ? _self.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cachedContentTokenCount: freezed == cachedContentTokenCount
          ? _self.cachedContentTokenCount
          : cachedContentTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      candidatesTokenCount: freezed == candidatesTokenCount
          ? _self.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      toolUsePromptTokenCount: freezed == toolUsePromptTokenCount
          ? _self.toolUsePromptTokenCount
          : toolUsePromptTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thoughtsTokenCount: freezed == thoughtsTokenCount
          ? _self.thoughtsTokenCount
          : thoughtsTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokenCount: freezed == totalTokenCount
          ? _self.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptTokensDetails: freezed == promptTokensDetails
          ? _self._promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      cacheTokensDetails: freezed == cacheTokensDetails
          ? _self._cacheTokensDetails
          : cacheTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      candidatesTokensDetails: freezed == candidatesTokensDetails
          ? _self._candidatesTokensDetails
          : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
      toolUsePromptTokensDetails: freezed == toolUsePromptTokensDetails
          ? _self._toolUsePromptTokensDetails
          : toolUsePromptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<ModalityTokenCount>?,
    ));
  }
}

// dart format on
