// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerationConfig {
  List<String>? get stopSequences;
  String? get responseMimeType;
  Schema? get responseSchema;
  List<Modality>? get responseModalities;
  int? get candidateCount;
  int? get maxOutputTokens;
  num? get temperature;
  num? get topP;
  int? get topK;
  int? get seed;
  num? get presencePenalty;
  num? get frequencyPenalty;
  bool? get responseLogprobs;
  int? get logprobs;
  bool? get enableEnhancedCivicAnswers;
  SpeechConfig? get speechConfig;
  ThinkingConfig? get thinkingConfig;
  MediaResolution? get mediaResolution;

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenerationConfigCopyWith<GenerationConfig> get copyWith =>
      _$GenerationConfigCopyWithImpl<GenerationConfig>(
          this as GenerationConfig, _$identity);

  /// Serializes this GenerationConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerationConfig &&
            const DeepCollectionEquality()
                .equals(other.stopSequences, stopSequences) &&
            (identical(other.responseMimeType, responseMimeType) ||
                other.responseMimeType == responseMimeType) &&
            (identical(other.responseSchema, responseSchema) ||
                other.responseSchema == responseSchema) &&
            const DeepCollectionEquality()
                .equals(other.responseModalities, responseModalities) &&
            (identical(other.candidateCount, candidateCount) ||
                other.candidateCount == candidateCount) &&
            (identical(other.maxOutputTokens, maxOutputTokens) ||
                other.maxOutputTokens == maxOutputTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.responseLogprobs, responseLogprobs) ||
                other.responseLogprobs == responseLogprobs) &&
            (identical(other.logprobs, logprobs) ||
                other.logprobs == logprobs) &&
            (identical(other.enableEnhancedCivicAnswers,
                    enableEnhancedCivicAnswers) ||
                other.enableEnhancedCivicAnswers ==
                    enableEnhancedCivicAnswers) &&
            (identical(other.speechConfig, speechConfig) ||
                other.speechConfig == speechConfig) &&
            (identical(other.thinkingConfig, thinkingConfig) ||
                other.thinkingConfig == thinkingConfig) &&
            (identical(other.mediaResolution, mediaResolution) ||
                other.mediaResolution == mediaResolution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stopSequences),
      responseMimeType,
      responseSchema,
      const DeepCollectionEquality().hash(responseModalities),
      candidateCount,
      maxOutputTokens,
      temperature,
      topP,
      topK,
      seed,
      presencePenalty,
      frequencyPenalty,
      responseLogprobs,
      logprobs,
      enableEnhancedCivicAnswers,
      speechConfig,
      thinkingConfig,
      mediaResolution);

  @override
  String toString() {
    return 'GenerationConfig(stopSequences: $stopSequences, responseMimeType: $responseMimeType, responseSchema: $responseSchema, responseModalities: $responseModalities, candidateCount: $candidateCount, maxOutputTokens: $maxOutputTokens, temperature: $temperature, topP: $topP, topK: $topK, seed: $seed, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty, responseLogprobs: $responseLogprobs, logprobs: $logprobs, enableEnhancedCivicAnswers: $enableEnhancedCivicAnswers, speechConfig: $speechConfig, thinkingConfig: $thinkingConfig, mediaResolution: $mediaResolution)';
  }
}

/// @nodoc
abstract mixin class $GenerationConfigCopyWith<$Res> {
  factory $GenerationConfigCopyWith(
          GenerationConfig value, $Res Function(GenerationConfig) _then) =
      _$GenerationConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<String>? stopSequences,
      String? responseMimeType,
      Schema? responseSchema,
      List<Modality>? responseModalities,
      int? candidateCount,
      int? maxOutputTokens,
      num? temperature,
      num? topP,
      int? topK,
      int? seed,
      num? presencePenalty,
      num? frequencyPenalty,
      bool? responseLogprobs,
      int? logprobs,
      bool? enableEnhancedCivicAnswers,
      SpeechConfig? speechConfig,
      ThinkingConfig? thinkingConfig,
      MediaResolution? mediaResolution});

  $SchemaCopyWith<$Res>? get responseSchema;
  $SpeechConfigCopyWith<$Res>? get speechConfig;
  $ThinkingConfigCopyWith<$Res>? get thinkingConfig;
}

/// @nodoc
class _$GenerationConfigCopyWithImpl<$Res>
    implements $GenerationConfigCopyWith<$Res> {
  _$GenerationConfigCopyWithImpl(this._self, this._then);

  final GenerationConfig _self;
  final $Res Function(GenerationConfig) _then;

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopSequences = freezed,
    Object? responseMimeType = freezed,
    Object? responseSchema = freezed,
    Object? responseModalities = freezed,
    Object? candidateCount = freezed,
    Object? maxOutputTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
    Object? seed = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? responseLogprobs = freezed,
    Object? logprobs = freezed,
    Object? enableEnhancedCivicAnswers = freezed,
    Object? speechConfig = freezed,
    Object? thinkingConfig = freezed,
    Object? mediaResolution = freezed,
  }) {
    return _then(_self.copyWith(
      stopSequences: freezed == stopSequences
          ? _self.stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responseMimeType: freezed == responseMimeType
          ? _self.responseMimeType
          : responseMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      responseSchema: freezed == responseSchema
          ? _self.responseSchema
          : responseSchema // ignore: cast_nullable_to_non_nullable
              as Schema?,
      responseModalities: freezed == responseModalities
          ? _self.responseModalities
          : responseModalities // ignore: cast_nullable_to_non_nullable
              as List<Modality>?,
      candidateCount: freezed == candidateCount
          ? _self.candidateCount
          : candidateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _self.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as num?,
      topK: freezed == topK
          ? _self.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      presencePenalty: freezed == presencePenalty
          ? _self.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as num?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _self.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as num?,
      responseLogprobs: freezed == responseLogprobs
          ? _self.responseLogprobs
          : responseLogprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      logprobs: freezed == logprobs
          ? _self.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as int?,
      enableEnhancedCivicAnswers: freezed == enableEnhancedCivicAnswers
          ? _self.enableEnhancedCivicAnswers
          : enableEnhancedCivicAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      speechConfig: freezed == speechConfig
          ? _self.speechConfig
          : speechConfig // ignore: cast_nullable_to_non_nullable
              as SpeechConfig?,
      thinkingConfig: freezed == thinkingConfig
          ? _self.thinkingConfig
          : thinkingConfig // ignore: cast_nullable_to_non_nullable
              as ThinkingConfig?,
      mediaResolution: freezed == mediaResolution
          ? _self.mediaResolution
          : mediaResolution // ignore: cast_nullable_to_non_nullable
              as MediaResolution?,
    ));
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res>? get responseSchema {
    if (_self.responseSchema == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_self.responseSchema!, (value) {
      return _then(_self.copyWith(responseSchema: value));
    });
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeechConfigCopyWith<$Res>? get speechConfig {
    if (_self.speechConfig == null) {
      return null;
    }

    return $SpeechConfigCopyWith<$Res>(_self.speechConfig!, (value) {
      return _then(_self.copyWith(speechConfig: value));
    });
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThinkingConfigCopyWith<$Res>? get thinkingConfig {
    if (_self.thinkingConfig == null) {
      return null;
    }

    return $ThinkingConfigCopyWith<$Res>(_self.thinkingConfig!, (value) {
      return _then(_self.copyWith(thinkingConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GenerationConfig extends GenerationConfig {
  _GenerationConfig(
      {final List<String>? stopSequences,
      this.responseMimeType,
      this.responseSchema,
      final List<Modality>? responseModalities,
      this.candidateCount,
      this.maxOutputTokens,
      this.temperature,
      this.topP,
      this.topK,
      this.seed,
      this.presencePenalty,
      this.frequencyPenalty,
      this.responseLogprobs,
      this.logprobs,
      this.enableEnhancedCivicAnswers,
      this.speechConfig,
      this.thinkingConfig,
      this.mediaResolution})
      : _stopSequences = stopSequences,
        _responseModalities = responseModalities,
        super._();
  factory _GenerationConfig.fromJson(Map<String, dynamic> json) =>
      _$GenerationConfigFromJson(json);

  final List<String>? _stopSequences;
  @override
  List<String>? get stopSequences {
    final value = _stopSequences;
    if (value == null) return null;
    if (_stopSequences is EqualUnmodifiableListView) return _stopSequences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? responseMimeType;
  @override
  final Schema? responseSchema;
  final List<Modality>? _responseModalities;
  @override
  List<Modality>? get responseModalities {
    final value = _responseModalities;
    if (value == null) return null;
    if (_responseModalities is EqualUnmodifiableListView)
      return _responseModalities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? candidateCount;
  @override
  final int? maxOutputTokens;
  @override
  final num? temperature;
  @override
  final num? topP;
  @override
  final int? topK;
  @override
  final int? seed;
  @override
  final num? presencePenalty;
  @override
  final num? frequencyPenalty;
  @override
  final bool? responseLogprobs;
  @override
  final int? logprobs;
  @override
  final bool? enableEnhancedCivicAnswers;
  @override
  final SpeechConfig? speechConfig;
  @override
  final ThinkingConfig? thinkingConfig;
  @override
  final MediaResolution? mediaResolution;

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenerationConfigCopyWith<_GenerationConfig> get copyWith =>
      __$GenerationConfigCopyWithImpl<_GenerationConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenerationConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenerationConfig &&
            const DeepCollectionEquality()
                .equals(other._stopSequences, _stopSequences) &&
            (identical(other.responseMimeType, responseMimeType) ||
                other.responseMimeType == responseMimeType) &&
            (identical(other.responseSchema, responseSchema) ||
                other.responseSchema == responseSchema) &&
            const DeepCollectionEquality()
                .equals(other._responseModalities, _responseModalities) &&
            (identical(other.candidateCount, candidateCount) ||
                other.candidateCount == candidateCount) &&
            (identical(other.maxOutputTokens, maxOutputTokens) ||
                other.maxOutputTokens == maxOutputTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.responseLogprobs, responseLogprobs) ||
                other.responseLogprobs == responseLogprobs) &&
            (identical(other.logprobs, logprobs) ||
                other.logprobs == logprobs) &&
            (identical(other.enableEnhancedCivicAnswers,
                    enableEnhancedCivicAnswers) ||
                other.enableEnhancedCivicAnswers ==
                    enableEnhancedCivicAnswers) &&
            (identical(other.speechConfig, speechConfig) ||
                other.speechConfig == speechConfig) &&
            (identical(other.thinkingConfig, thinkingConfig) ||
                other.thinkingConfig == thinkingConfig) &&
            (identical(other.mediaResolution, mediaResolution) ||
                other.mediaResolution == mediaResolution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stopSequences),
      responseMimeType,
      responseSchema,
      const DeepCollectionEquality().hash(_responseModalities),
      candidateCount,
      maxOutputTokens,
      temperature,
      topP,
      topK,
      seed,
      presencePenalty,
      frequencyPenalty,
      responseLogprobs,
      logprobs,
      enableEnhancedCivicAnswers,
      speechConfig,
      thinkingConfig,
      mediaResolution);

  @override
  String toString() {
    return 'GenerationConfig(stopSequences: $stopSequences, responseMimeType: $responseMimeType, responseSchema: $responseSchema, responseModalities: $responseModalities, candidateCount: $candidateCount, maxOutputTokens: $maxOutputTokens, temperature: $temperature, topP: $topP, topK: $topK, seed: $seed, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty, responseLogprobs: $responseLogprobs, logprobs: $logprobs, enableEnhancedCivicAnswers: $enableEnhancedCivicAnswers, speechConfig: $speechConfig, thinkingConfig: $thinkingConfig, mediaResolution: $mediaResolution)';
  }
}

/// @nodoc
abstract mixin class _$GenerationConfigCopyWith<$Res>
    implements $GenerationConfigCopyWith<$Res> {
  factory _$GenerationConfigCopyWith(
          _GenerationConfig value, $Res Function(_GenerationConfig) _then) =
      __$GenerationConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String>? stopSequences,
      String? responseMimeType,
      Schema? responseSchema,
      List<Modality>? responseModalities,
      int? candidateCount,
      int? maxOutputTokens,
      num? temperature,
      num? topP,
      int? topK,
      int? seed,
      num? presencePenalty,
      num? frequencyPenalty,
      bool? responseLogprobs,
      int? logprobs,
      bool? enableEnhancedCivicAnswers,
      SpeechConfig? speechConfig,
      ThinkingConfig? thinkingConfig,
      MediaResolution? mediaResolution});

  @override
  $SchemaCopyWith<$Res>? get responseSchema;
  @override
  $SpeechConfigCopyWith<$Res>? get speechConfig;
  @override
  $ThinkingConfigCopyWith<$Res>? get thinkingConfig;
}

/// @nodoc
class __$GenerationConfigCopyWithImpl<$Res>
    implements _$GenerationConfigCopyWith<$Res> {
  __$GenerationConfigCopyWithImpl(this._self, this._then);

  final _GenerationConfig _self;
  final $Res Function(_GenerationConfig) _then;

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stopSequences = freezed,
    Object? responseMimeType = freezed,
    Object? responseSchema = freezed,
    Object? responseModalities = freezed,
    Object? candidateCount = freezed,
    Object? maxOutputTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
    Object? seed = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? responseLogprobs = freezed,
    Object? logprobs = freezed,
    Object? enableEnhancedCivicAnswers = freezed,
    Object? speechConfig = freezed,
    Object? thinkingConfig = freezed,
    Object? mediaResolution = freezed,
  }) {
    return _then(_GenerationConfig(
      stopSequences: freezed == stopSequences
          ? _self._stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responseMimeType: freezed == responseMimeType
          ? _self.responseMimeType
          : responseMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      responseSchema: freezed == responseSchema
          ? _self.responseSchema
          : responseSchema // ignore: cast_nullable_to_non_nullable
              as Schema?,
      responseModalities: freezed == responseModalities
          ? _self._responseModalities
          : responseModalities // ignore: cast_nullable_to_non_nullable
              as List<Modality>?,
      candidateCount: freezed == candidateCount
          ? _self.candidateCount
          : candidateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _self.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as num?,
      topK: freezed == topK
          ? _self.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      presencePenalty: freezed == presencePenalty
          ? _self.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as num?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _self.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as num?,
      responseLogprobs: freezed == responseLogprobs
          ? _self.responseLogprobs
          : responseLogprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      logprobs: freezed == logprobs
          ? _self.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as int?,
      enableEnhancedCivicAnswers: freezed == enableEnhancedCivicAnswers
          ? _self.enableEnhancedCivicAnswers
          : enableEnhancedCivicAnswers // ignore: cast_nullable_to_non_nullable
              as bool?,
      speechConfig: freezed == speechConfig
          ? _self.speechConfig
          : speechConfig // ignore: cast_nullable_to_non_nullable
              as SpeechConfig?,
      thinkingConfig: freezed == thinkingConfig
          ? _self.thinkingConfig
          : thinkingConfig // ignore: cast_nullable_to_non_nullable
              as ThinkingConfig?,
      mediaResolution: freezed == mediaResolution
          ? _self.mediaResolution
          : mediaResolution // ignore: cast_nullable_to_non_nullable
              as MediaResolution?,
    ));
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res>? get responseSchema {
    if (_self.responseSchema == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_self.responseSchema!, (value) {
      return _then(_self.copyWith(responseSchema: value));
    });
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeechConfigCopyWith<$Res>? get speechConfig {
    if (_self.speechConfig == null) {
      return null;
    }

    return $SpeechConfigCopyWith<$Res>(_self.speechConfig!, (value) {
      return _then(_self.copyWith(speechConfig: value));
    });
  }

  /// Create a copy of GenerationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThinkingConfigCopyWith<$Res>? get thinkingConfig {
    if (_self.thinkingConfig == null) {
      return null;
    }

    return $ThinkingConfigCopyWith<$Res>(_self.thinkingConfig!, (value) {
      return _then(_self.copyWith(thinkingConfig: value));
    });
  }
}

// dart format on
