// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Candidate {
  Content? get content;
  FinishReason? get finishReason;
  List<SafetyRating>? get safetyRatings;
  CitationMetadata? get citationMetadata;
  int? get tokenCount;
  List<GroundingAttribution>? get groundingAttributions;
  GroundingMetadata? get groundingMetadata;
  double? get avgLogprobs;
  LogprobsResult? get logprobsResult;
  UrlRetrievalMetadata? get urlRetrievalMetadata;
  UrlContextMetadata? get urlContextMetadata;
  int? get index;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CandidateCopyWith<Candidate> get copyWith =>
      _$CandidateCopyWithImpl<Candidate>(this as Candidate, _$identity);

  /// Serializes this Candidate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Candidate &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality()
                .equals(other.safetyRatings, safetyRatings) &&
            (identical(other.citationMetadata, citationMetadata) ||
                other.citationMetadata == citationMetadata) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount) &&
            const DeepCollectionEquality()
                .equals(other.groundingAttributions, groundingAttributions) &&
            (identical(other.groundingMetadata, groundingMetadata) ||
                other.groundingMetadata == groundingMetadata) &&
            (identical(other.avgLogprobs, avgLogprobs) ||
                other.avgLogprobs == avgLogprobs) &&
            (identical(other.logprobsResult, logprobsResult) ||
                other.logprobsResult == logprobsResult) &&
            (identical(other.urlRetrievalMetadata, urlRetrievalMetadata) ||
                other.urlRetrievalMetadata == urlRetrievalMetadata) &&
            (identical(other.urlContextMetadata, urlContextMetadata) ||
                other.urlContextMetadata == urlContextMetadata) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      finishReason,
      const DeepCollectionEquality().hash(safetyRatings),
      citationMetadata,
      tokenCount,
      const DeepCollectionEquality().hash(groundingAttributions),
      groundingMetadata,
      avgLogprobs,
      logprobsResult,
      urlRetrievalMetadata,
      urlContextMetadata,
      index);

  @override
  String toString() {
    return 'Candidate(content: $content, finishReason: $finishReason, safetyRatings: $safetyRatings, citationMetadata: $citationMetadata, tokenCount: $tokenCount, groundingAttributions: $groundingAttributions, groundingMetadata: $groundingMetadata, avgLogprobs: $avgLogprobs, logprobsResult: $logprobsResult, urlRetrievalMetadata: $urlRetrievalMetadata, urlContextMetadata: $urlContextMetadata, index: $index)';
  }
}

/// @nodoc
abstract mixin class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) _then) =
      _$CandidateCopyWithImpl;
  @useResult
  $Res call(
      {Content? content,
      FinishReason? finishReason,
      List<SafetyRating>? safetyRatings,
      CitationMetadata? citationMetadata,
      int? tokenCount,
      List<GroundingAttribution>? groundingAttributions,
      GroundingMetadata? groundingMetadata,
      double? avgLogprobs,
      LogprobsResult? logprobsResult,
      UrlRetrievalMetadata? urlRetrievalMetadata,
      UrlContextMetadata? urlContextMetadata,
      int? index});

  $ContentCopyWith<$Res>? get content;
  $CitationMetadataCopyWith<$Res>? get citationMetadata;
  $GroundingMetadataCopyWith<$Res>? get groundingMetadata;
  $LogprobsResultCopyWith<$Res>? get logprobsResult;
  $UrlRetrievalMetadataCopyWith<$Res>? get urlRetrievalMetadata;
  $UrlContextMetadataCopyWith<$Res>? get urlContextMetadata;
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res> implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._self, this._then);

  final Candidate _self;
  final $Res Function(Candidate) _then;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? finishReason = freezed,
    Object? safetyRatings = freezed,
    Object? citationMetadata = freezed,
    Object? tokenCount = freezed,
    Object? groundingAttributions = freezed,
    Object? groundingMetadata = freezed,
    Object? avgLogprobs = freezed,
    Object? logprobsResult = freezed,
    Object? urlRetrievalMetadata = freezed,
    Object? urlContextMetadata = freezed,
    Object? index = freezed,
  }) {
    return _then(_self.copyWith(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      finishReason: freezed == finishReason
          ? _self.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as FinishReason?,
      safetyRatings: freezed == safetyRatings
          ? _self.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRating>?,
      citationMetadata: freezed == citationMetadata
          ? _self.citationMetadata
          : citationMetadata // ignore: cast_nullable_to_non_nullable
              as CitationMetadata?,
      tokenCount: freezed == tokenCount
          ? _self.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      groundingAttributions: freezed == groundingAttributions
          ? _self.groundingAttributions
          : groundingAttributions // ignore: cast_nullable_to_non_nullable
              as List<GroundingAttribution>?,
      groundingMetadata: freezed == groundingMetadata
          ? _self.groundingMetadata
          : groundingMetadata // ignore: cast_nullable_to_non_nullable
              as GroundingMetadata?,
      avgLogprobs: freezed == avgLogprobs
          ? _self.avgLogprobs
          : avgLogprobs // ignore: cast_nullable_to_non_nullable
              as double?,
      logprobsResult: freezed == logprobsResult
          ? _self.logprobsResult
          : logprobsResult // ignore: cast_nullable_to_non_nullable
              as LogprobsResult?,
      urlRetrievalMetadata: freezed == urlRetrievalMetadata
          ? _self.urlRetrievalMetadata
          : urlRetrievalMetadata // ignore: cast_nullable_to_non_nullable
              as UrlRetrievalMetadata?,
      urlContextMetadata: freezed == urlContextMetadata
          ? _self.urlContextMetadata
          : urlContextMetadata // ignore: cast_nullable_to_non_nullable
              as UrlContextMetadata?,
      index: freezed == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Candidate
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

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CitationMetadataCopyWith<$Res>? get citationMetadata {
    if (_self.citationMetadata == null) {
      return null;
    }

    return $CitationMetadataCopyWith<$Res>(_self.citationMetadata!, (value) {
      return _then(_self.copyWith(citationMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroundingMetadataCopyWith<$Res>? get groundingMetadata {
    if (_self.groundingMetadata == null) {
      return null;
    }

    return $GroundingMetadataCopyWith<$Res>(_self.groundingMetadata!, (value) {
      return _then(_self.copyWith(groundingMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogprobsResultCopyWith<$Res>? get logprobsResult {
    if (_self.logprobsResult == null) {
      return null;
    }

    return $LogprobsResultCopyWith<$Res>(_self.logprobsResult!, (value) {
      return _then(_self.copyWith(logprobsResult: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlRetrievalMetadataCopyWith<$Res>? get urlRetrievalMetadata {
    if (_self.urlRetrievalMetadata == null) {
      return null;
    }

    return $UrlRetrievalMetadataCopyWith<$Res>(_self.urlRetrievalMetadata!,
        (value) {
      return _then(_self.copyWith(urlRetrievalMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlContextMetadataCopyWith<$Res>? get urlContextMetadata {
    if (_self.urlContextMetadata == null) {
      return null;
    }

    return $UrlContextMetadataCopyWith<$Res>(_self.urlContextMetadata!,
        (value) {
      return _then(_self.copyWith(urlContextMetadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Candidate extends Candidate {
  _Candidate(
      {this.content,
      this.finishReason,
      final List<SafetyRating>? safetyRatings,
      this.citationMetadata,
      this.tokenCount,
      final List<GroundingAttribution>? groundingAttributions,
      this.groundingMetadata,
      this.avgLogprobs,
      this.logprobsResult,
      this.urlRetrievalMetadata,
      this.urlContextMetadata,
      this.index})
      : _safetyRatings = safetyRatings,
        _groundingAttributions = groundingAttributions,
        super._();
  factory _Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);

  @override
  final Content? content;
  @override
  final FinishReason? finishReason;
  final List<SafetyRating>? _safetyRatings;
  @override
  List<SafetyRating>? get safetyRatings {
    final value = _safetyRatings;
    if (value == null) return null;
    if (_safetyRatings is EqualUnmodifiableListView) return _safetyRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CitationMetadata? citationMetadata;
  @override
  final int? tokenCount;
  final List<GroundingAttribution>? _groundingAttributions;
  @override
  List<GroundingAttribution>? get groundingAttributions {
    final value = _groundingAttributions;
    if (value == null) return null;
    if (_groundingAttributions is EqualUnmodifiableListView)
      return _groundingAttributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GroundingMetadata? groundingMetadata;
  @override
  final double? avgLogprobs;
  @override
  final LogprobsResult? logprobsResult;
  @override
  final UrlRetrievalMetadata? urlRetrievalMetadata;
  @override
  final UrlContextMetadata? urlContextMetadata;
  @override
  final int? index;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CandidateCopyWith<_Candidate> get copyWith =>
      __$CandidateCopyWithImpl<_Candidate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CandidateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Candidate &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality()
                .equals(other._safetyRatings, _safetyRatings) &&
            (identical(other.citationMetadata, citationMetadata) ||
                other.citationMetadata == citationMetadata) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount) &&
            const DeepCollectionEquality()
                .equals(other._groundingAttributions, _groundingAttributions) &&
            (identical(other.groundingMetadata, groundingMetadata) ||
                other.groundingMetadata == groundingMetadata) &&
            (identical(other.avgLogprobs, avgLogprobs) ||
                other.avgLogprobs == avgLogprobs) &&
            (identical(other.logprobsResult, logprobsResult) ||
                other.logprobsResult == logprobsResult) &&
            (identical(other.urlRetrievalMetadata, urlRetrievalMetadata) ||
                other.urlRetrievalMetadata == urlRetrievalMetadata) &&
            (identical(other.urlContextMetadata, urlContextMetadata) ||
                other.urlContextMetadata == urlContextMetadata) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      finishReason,
      const DeepCollectionEquality().hash(_safetyRatings),
      citationMetadata,
      tokenCount,
      const DeepCollectionEquality().hash(_groundingAttributions),
      groundingMetadata,
      avgLogprobs,
      logprobsResult,
      urlRetrievalMetadata,
      urlContextMetadata,
      index);

  @override
  String toString() {
    return 'Candidate(content: $content, finishReason: $finishReason, safetyRatings: $safetyRatings, citationMetadata: $citationMetadata, tokenCount: $tokenCount, groundingAttributions: $groundingAttributions, groundingMetadata: $groundingMetadata, avgLogprobs: $avgLogprobs, logprobsResult: $logprobsResult, urlRetrievalMetadata: $urlRetrievalMetadata, urlContextMetadata: $urlContextMetadata, index: $index)';
  }
}

/// @nodoc
abstract mixin class _$CandidateCopyWith<$Res>
    implements $CandidateCopyWith<$Res> {
  factory _$CandidateCopyWith(
          _Candidate value, $Res Function(_Candidate) _then) =
      __$CandidateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Content? content,
      FinishReason? finishReason,
      List<SafetyRating>? safetyRatings,
      CitationMetadata? citationMetadata,
      int? tokenCount,
      List<GroundingAttribution>? groundingAttributions,
      GroundingMetadata? groundingMetadata,
      double? avgLogprobs,
      LogprobsResult? logprobsResult,
      UrlRetrievalMetadata? urlRetrievalMetadata,
      UrlContextMetadata? urlContextMetadata,
      int? index});

  @override
  $ContentCopyWith<$Res>? get content;
  @override
  $CitationMetadataCopyWith<$Res>? get citationMetadata;
  @override
  $GroundingMetadataCopyWith<$Res>? get groundingMetadata;
  @override
  $LogprobsResultCopyWith<$Res>? get logprobsResult;
  @override
  $UrlRetrievalMetadataCopyWith<$Res>? get urlRetrievalMetadata;
  @override
  $UrlContextMetadataCopyWith<$Res>? get urlContextMetadata;
}

/// @nodoc
class __$CandidateCopyWithImpl<$Res> implements _$CandidateCopyWith<$Res> {
  __$CandidateCopyWithImpl(this._self, this._then);

  final _Candidate _self;
  final $Res Function(_Candidate) _then;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? finishReason = freezed,
    Object? safetyRatings = freezed,
    Object? citationMetadata = freezed,
    Object? tokenCount = freezed,
    Object? groundingAttributions = freezed,
    Object? groundingMetadata = freezed,
    Object? avgLogprobs = freezed,
    Object? logprobsResult = freezed,
    Object? urlRetrievalMetadata = freezed,
    Object? urlContextMetadata = freezed,
    Object? index = freezed,
  }) {
    return _then(_Candidate(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      finishReason: freezed == finishReason
          ? _self.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as FinishReason?,
      safetyRatings: freezed == safetyRatings
          ? _self._safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRating>?,
      citationMetadata: freezed == citationMetadata
          ? _self.citationMetadata
          : citationMetadata // ignore: cast_nullable_to_non_nullable
              as CitationMetadata?,
      tokenCount: freezed == tokenCount
          ? _self.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      groundingAttributions: freezed == groundingAttributions
          ? _self._groundingAttributions
          : groundingAttributions // ignore: cast_nullable_to_non_nullable
              as List<GroundingAttribution>?,
      groundingMetadata: freezed == groundingMetadata
          ? _self.groundingMetadata
          : groundingMetadata // ignore: cast_nullable_to_non_nullable
              as GroundingMetadata?,
      avgLogprobs: freezed == avgLogprobs
          ? _self.avgLogprobs
          : avgLogprobs // ignore: cast_nullable_to_non_nullable
              as double?,
      logprobsResult: freezed == logprobsResult
          ? _self.logprobsResult
          : logprobsResult // ignore: cast_nullable_to_non_nullable
              as LogprobsResult?,
      urlRetrievalMetadata: freezed == urlRetrievalMetadata
          ? _self.urlRetrievalMetadata
          : urlRetrievalMetadata // ignore: cast_nullable_to_non_nullable
              as UrlRetrievalMetadata?,
      urlContextMetadata: freezed == urlContextMetadata
          ? _self.urlContextMetadata
          : urlContextMetadata // ignore: cast_nullable_to_non_nullable
              as UrlContextMetadata?,
      index: freezed == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of Candidate
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

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CitationMetadataCopyWith<$Res>? get citationMetadata {
    if (_self.citationMetadata == null) {
      return null;
    }

    return $CitationMetadataCopyWith<$Res>(_self.citationMetadata!, (value) {
      return _then(_self.copyWith(citationMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroundingMetadataCopyWith<$Res>? get groundingMetadata {
    if (_self.groundingMetadata == null) {
      return null;
    }

    return $GroundingMetadataCopyWith<$Res>(_self.groundingMetadata!, (value) {
      return _then(_self.copyWith(groundingMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogprobsResultCopyWith<$Res>? get logprobsResult {
    if (_self.logprobsResult == null) {
      return null;
    }

    return $LogprobsResultCopyWith<$Res>(_self.logprobsResult!, (value) {
      return _then(_self.copyWith(logprobsResult: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlRetrievalMetadataCopyWith<$Res>? get urlRetrievalMetadata {
    if (_self.urlRetrievalMetadata == null) {
      return null;
    }

    return $UrlRetrievalMetadataCopyWith<$Res>(_self.urlRetrievalMetadata!,
        (value) {
      return _then(_self.copyWith(urlRetrievalMetadata: value));
    });
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlContextMetadataCopyWith<$Res>? get urlContextMetadata {
    if (_self.urlContextMetadata == null) {
      return null;
    }

    return $UrlContextMetadataCopyWith<$Res>(_self.urlContextMetadata!,
        (value) {
      return _then(_self.copyWith(urlContextMetadata: value));
    });
  }
}

// dart format on
