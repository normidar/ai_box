// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionResponseUsage {
  @JsonKey(name: 'completion_tokens')
  int get completionTokens;
  @JsonKey(name: 'prompt_tokens')
  int get promptTokens;
  @JsonKey(name: 'total_tokens')
  int get totalTokens;
  @JsonKey(name: 'completion_tokens_details')
  ChatCompletionResponseUsageCompletionTokensDetails?
      get completionTokensDetails;
  @JsonKey(name: 'number_searches')
  int? get numberSearches;
  @JsonKey(name: 'prompt_tokens_details')
  ChatCompletionResponseUsagePromptTokensDetails? get promptTokensDetails;

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<ChatCompletionResponseUsage>
      get copyWith => _$ChatCompletionResponseUsageCopyWithImpl<
              ChatCompletionResponseUsage>(
          this as ChatCompletionResponseUsage, _$identity);

  /// Serializes this ChatCompletionResponseUsage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponseUsage &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens) &&
            (identical(
                    other.completionTokensDetails, completionTokensDetails) ||
                other.completionTokensDetails == completionTokensDetails) &&
            (identical(other.numberSearches, numberSearches) ||
                other.numberSearches == numberSearches) &&
            (identical(other.promptTokensDetails, promptTokensDetails) ||
                other.promptTokensDetails == promptTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      completionTokens,
      promptTokens,
      totalTokens,
      completionTokensDetails,
      numberSearches,
      promptTokensDetails);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, completionTokensDetails: $completionTokensDetails, numberSearches: $numberSearches, promptTokensDetails: $promptTokensDetails)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseUsageCopyWith<$Res> {
  factory $ChatCompletionResponseUsageCopyWith(
          ChatCompletionResponseUsage value,
          $Res Function(ChatCompletionResponseUsage) _then) =
      _$ChatCompletionResponseUsageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_tokens') int completionTokens,
      @JsonKey(name: 'prompt_tokens') int promptTokens,
      @JsonKey(name: 'total_tokens') int totalTokens,
      @JsonKey(name: 'completion_tokens_details')
      ChatCompletionResponseUsageCompletionTokensDetails?
          completionTokensDetails,
      @JsonKey(name: 'number_searches') int? numberSearches,
      @JsonKey(name: 'prompt_tokens_details')
      ChatCompletionResponseUsagePromptTokensDetails? promptTokensDetails});

  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails;
  $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>?
      get promptTokensDetails;
}

/// @nodoc
class _$ChatCompletionResponseUsageCopyWithImpl<$Res>
    implements $ChatCompletionResponseUsageCopyWith<$Res> {
  _$ChatCompletionResponseUsageCopyWithImpl(this._self, this._then);

  final ChatCompletionResponseUsage _self;
  final $Res Function(ChatCompletionResponseUsage) _then;

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionTokens = null,
    Object? promptTokens = null,
    Object? totalTokens = null,
    Object? completionTokensDetails = freezed,
    Object? numberSearches = freezed,
    Object? promptTokensDetails = freezed,
  }) {
    return _then(_self.copyWith(
      completionTokens: null == completionTokens
          ? _self.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokens: null == promptTokens
          ? _self.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _self.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokensDetails: freezed == completionTokensDetails
          ? _self.completionTokensDetails
          : completionTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsageCompletionTokensDetails?,
      numberSearches: freezed == numberSearches
          ? _self.numberSearches
          : numberSearches // ignore: cast_nullable_to_non_nullable
              as int?,
      promptTokensDetails: freezed == promptTokensDetails
          ? _self.promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsagePromptTokensDetails?,
    ));
  }

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails {
    if (_self.completionTokensDetails == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>(
        _self.completionTokensDetails!, (value) {
      return _then(_self.copyWith(completionTokensDetails: value));
    });
  }

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>?
      get promptTokensDetails {
    if (_self.promptTokensDetails == null) {
      return null;
    }

    return $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>(
        _self.promptTokensDetails!, (value) {
      return _then(_self.copyWith(promptTokensDetails: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseUsage extends ChatCompletionResponseUsage {
  _ChatCompletionResponseUsage(
      {@JsonKey(name: 'completion_tokens') required this.completionTokens,
      @JsonKey(name: 'prompt_tokens') required this.promptTokens,
      @JsonKey(name: 'total_tokens') required this.totalTokens,
      @JsonKey(name: 'completion_tokens_details') this.completionTokensDetails,
      @JsonKey(name: 'number_searches') this.numberSearches,
      @JsonKey(name: 'prompt_tokens_details') this.promptTokensDetails})
      : super._();
  factory _ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageFromJson(json);

  @override
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;
  @override
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;
  @override
  @JsonKey(name: 'total_tokens')
  final int totalTokens;
  @override
  @JsonKey(name: 'completion_tokens_details')
  final ChatCompletionResponseUsageCompletionTokensDetails?
      completionTokensDetails;
  @override
  @JsonKey(name: 'number_searches')
  final int? numberSearches;
  @override
  @JsonKey(name: 'prompt_tokens_details')
  final ChatCompletionResponseUsagePromptTokensDetails? promptTokensDetails;

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseUsageCopyWith<_ChatCompletionResponseUsage>
      get copyWith => __$ChatCompletionResponseUsageCopyWithImpl<
          _ChatCompletionResponseUsage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseUsageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponseUsage &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens) &&
            (identical(
                    other.completionTokensDetails, completionTokensDetails) ||
                other.completionTokensDetails == completionTokensDetails) &&
            (identical(other.numberSearches, numberSearches) ||
                other.numberSearches == numberSearches) &&
            (identical(other.promptTokensDetails, promptTokensDetails) ||
                other.promptTokensDetails == promptTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      completionTokens,
      promptTokens,
      totalTokens,
      completionTokensDetails,
      numberSearches,
      promptTokensDetails);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, completionTokensDetails: $completionTokensDetails, numberSearches: $numberSearches, promptTokensDetails: $promptTokensDetails)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseUsageCopyWith<$Res>
    implements $ChatCompletionResponseUsageCopyWith<$Res> {
  factory _$ChatCompletionResponseUsageCopyWith(
          _ChatCompletionResponseUsage value,
          $Res Function(_ChatCompletionResponseUsage) _then) =
      __$ChatCompletionResponseUsageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_tokens') int completionTokens,
      @JsonKey(name: 'prompt_tokens') int promptTokens,
      @JsonKey(name: 'total_tokens') int totalTokens,
      @JsonKey(name: 'completion_tokens_details')
      ChatCompletionResponseUsageCompletionTokensDetails?
          completionTokensDetails,
      @JsonKey(name: 'number_searches') int? numberSearches,
      @JsonKey(name: 'prompt_tokens_details')
      ChatCompletionResponseUsagePromptTokensDetails? promptTokensDetails});

  @override
  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails;
  @override
  $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>?
      get promptTokensDetails;
}

/// @nodoc
class __$ChatCompletionResponseUsageCopyWithImpl<$Res>
    implements _$ChatCompletionResponseUsageCopyWith<$Res> {
  __$ChatCompletionResponseUsageCopyWithImpl(this._self, this._then);

  final _ChatCompletionResponseUsage _self;
  final $Res Function(_ChatCompletionResponseUsage) _then;

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? completionTokens = null,
    Object? promptTokens = null,
    Object? totalTokens = null,
    Object? completionTokensDetails = freezed,
    Object? numberSearches = freezed,
    Object? promptTokensDetails = freezed,
  }) {
    return _then(_ChatCompletionResponseUsage(
      completionTokens: null == completionTokens
          ? _self.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokens: null == promptTokens
          ? _self.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _self.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokensDetails: freezed == completionTokensDetails
          ? _self.completionTokensDetails
          : completionTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsageCompletionTokensDetails?,
      numberSearches: freezed == numberSearches
          ? _self.numberSearches
          : numberSearches // ignore: cast_nullable_to_non_nullable
              as int?,
      promptTokensDetails: freezed == promptTokensDetails
          ? _self.promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsagePromptTokensDetails?,
    ));
  }

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails {
    if (_self.completionTokensDetails == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>(
        _self.completionTokensDetails!, (value) {
      return _then(_self.copyWith(completionTokensDetails: value));
    });
  }

  /// Create a copy of ChatCompletionResponseUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>?
      get promptTokensDetails {
    if (_self.promptTokensDetails == null) {
      return null;
    }

    return $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res>(
        _self.promptTokensDetails!, (value) {
      return _then(_self.copyWith(promptTokensDetails: value));
    });
  }
}

/// @nodoc
mixin _$ChatCompletionResponseUsageCompletionTokensDetails {
  @JsonKey(name: 'accepted_prediction_tokens')
  int get acceptedPredictionTokens;
  @JsonKey(name: 'audio_tokens')
  int get audioTokens;
  @JsonKey(name: 'reasoning_tokens')
  int get reasoningTokens;
  @JsonKey(name: 'rejected_prediction_tokens')
  int get rejectedPredictionTokens;

  /// Create a copy of ChatCompletionResponseUsageCompletionTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<
          ChatCompletionResponseUsageCompletionTokensDetails>
      get copyWith =>
          _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl<
                  ChatCompletionResponseUsageCompletionTokensDetails>(
              this as ChatCompletionResponseUsageCompletionTokensDetails,
              _$identity);

  /// Serializes this ChatCompletionResponseUsageCompletionTokensDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponseUsageCompletionTokensDetails &&
            (identical(
                    other.acceptedPredictionTokens, acceptedPredictionTokens) ||
                other.acceptedPredictionTokens == acceptedPredictionTokens) &&
            (identical(other.audioTokens, audioTokens) ||
                other.audioTokens == audioTokens) &&
            (identical(other.reasoningTokens, reasoningTokens) ||
                other.reasoningTokens == reasoningTokens) &&
            (identical(
                    other.rejectedPredictionTokens, rejectedPredictionTokens) ||
                other.rejectedPredictionTokens == rejectedPredictionTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, acceptedPredictionTokens,
      audioTokens, reasoningTokens, rejectedPredictionTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsageCompletionTokensDetails(acceptedPredictionTokens: $acceptedPredictionTokens, audioTokens: $audioTokens, reasoningTokens: $reasoningTokens, rejectedPredictionTokens: $rejectedPredictionTokens)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<
    $Res> {
  factory $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith(
          ChatCompletionResponseUsageCompletionTokensDetails value,
          $Res Function(ChatCompletionResponseUsageCompletionTokensDetails)
              _then) =
      _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'accepted_prediction_tokens')
      int acceptedPredictionTokens,
      @JsonKey(name: 'audio_tokens') int audioTokens,
      @JsonKey(name: 'reasoning_tokens') int reasoningTokens,
      @JsonKey(name: 'rejected_prediction_tokens')
      int rejectedPredictionTokens});
}

/// @nodoc
class _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl<$Res>
    implements
        $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res> {
  _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl(
      this._self, this._then);

  final ChatCompletionResponseUsageCompletionTokensDetails _self;
  final $Res Function(ChatCompletionResponseUsageCompletionTokensDetails) _then;

  /// Create a copy of ChatCompletionResponseUsageCompletionTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedPredictionTokens = null,
    Object? audioTokens = null,
    Object? reasoningTokens = null,
    Object? rejectedPredictionTokens = null,
  }) {
    return _then(_self.copyWith(
      acceptedPredictionTokens: null == acceptedPredictionTokens
          ? _self.acceptedPredictionTokens
          : acceptedPredictionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      audioTokens: null == audioTokens
          ? _self.audioTokens
          : audioTokens // ignore: cast_nullable_to_non_nullable
              as int,
      reasoningTokens: null == reasoningTokens
          ? _self.reasoningTokens
          : reasoningTokens // ignore: cast_nullable_to_non_nullable
              as int,
      rejectedPredictionTokens: null == rejectedPredictionTokens
          ? _self.rejectedPredictionTokens
          : rejectedPredictionTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseUsageCompletionTokensDetails
    extends ChatCompletionResponseUsageCompletionTokensDetails {
  _ChatCompletionResponseUsageCompletionTokensDetails(
      {@JsonKey(name: 'accepted_prediction_tokens')
      required this.acceptedPredictionTokens,
      @JsonKey(name: 'audio_tokens') required this.audioTokens,
      @JsonKey(name: 'reasoning_tokens') required this.reasoningTokens,
      @JsonKey(name: 'rejected_prediction_tokens')
      required this.rejectedPredictionTokens})
      : super._();
  factory _ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(json);

  @override
  @JsonKey(name: 'accepted_prediction_tokens')
  final int acceptedPredictionTokens;
  @override
  @JsonKey(name: 'audio_tokens')
  final int audioTokens;
  @override
  @JsonKey(name: 'reasoning_tokens')
  final int reasoningTokens;
  @override
  @JsonKey(name: 'rejected_prediction_tokens')
  final int rejectedPredictionTokens;

  /// Create a copy of ChatCompletionResponseUsageCompletionTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<
          _ChatCompletionResponseUsageCompletionTokensDetails>
      get copyWith =>
          __$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl<
                  _ChatCompletionResponseUsageCompletionTokensDetails>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseUsageCompletionTokensDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponseUsageCompletionTokensDetails &&
            (identical(
                    other.acceptedPredictionTokens, acceptedPredictionTokens) ||
                other.acceptedPredictionTokens == acceptedPredictionTokens) &&
            (identical(other.audioTokens, audioTokens) ||
                other.audioTokens == audioTokens) &&
            (identical(other.reasoningTokens, reasoningTokens) ||
                other.reasoningTokens == reasoningTokens) &&
            (identical(
                    other.rejectedPredictionTokens, rejectedPredictionTokens) ||
                other.rejectedPredictionTokens == rejectedPredictionTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, acceptedPredictionTokens,
      audioTokens, reasoningTokens, rejectedPredictionTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsageCompletionTokensDetails(acceptedPredictionTokens: $acceptedPredictionTokens, audioTokens: $audioTokens, reasoningTokens: $reasoningTokens, rejectedPredictionTokens: $rejectedPredictionTokens)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<
        $Res>
    implements
        $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res> {
  factory _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWith(
          _ChatCompletionResponseUsageCompletionTokensDetails value,
          $Res Function(_ChatCompletionResponseUsageCompletionTokensDetails)
              _then) =
      __$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accepted_prediction_tokens')
      int acceptedPredictionTokens,
      @JsonKey(name: 'audio_tokens') int audioTokens,
      @JsonKey(name: 'reasoning_tokens') int reasoningTokens,
      @JsonKey(name: 'rejected_prediction_tokens')
      int rejectedPredictionTokens});
}

/// @nodoc
class __$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl<$Res>
    implements
        _$ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res> {
  __$ChatCompletionResponseUsageCompletionTokensDetailsCopyWithImpl(
      this._self, this._then);

  final _ChatCompletionResponseUsageCompletionTokensDetails _self;
  final $Res Function(_ChatCompletionResponseUsageCompletionTokensDetails)
      _then;

  /// Create a copy of ChatCompletionResponseUsageCompletionTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? acceptedPredictionTokens = null,
    Object? audioTokens = null,
    Object? reasoningTokens = null,
    Object? rejectedPredictionTokens = null,
  }) {
    return _then(_ChatCompletionResponseUsageCompletionTokensDetails(
      acceptedPredictionTokens: null == acceptedPredictionTokens
          ? _self.acceptedPredictionTokens
          : acceptedPredictionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      audioTokens: null == audioTokens
          ? _self.audioTokens
          : audioTokens // ignore: cast_nullable_to_non_nullable
              as int,
      reasoningTokens: null == reasoningTokens
          ? _self.reasoningTokens
          : reasoningTokens // ignore: cast_nullable_to_non_nullable
              as int,
      rejectedPredictionTokens: null == rejectedPredictionTokens
          ? _self.rejectedPredictionTokens
          : rejectedPredictionTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ChatCompletionResponseUsagePromptTokensDetails {
  @JsonKey(name: 'audio_tokens')
  int get audioTokens;
  @JsonKey(name: 'cached_tokens')
  int get cachedTokens;
  @JsonKey(name: 'image_tokens')
  int get imageTokens;
  @JsonKey(name: 'text_tokens')
  int get textTokens;

  /// Create a copy of ChatCompletionResponseUsagePromptTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<
          ChatCompletionResponseUsagePromptTokensDetails>
      get copyWith =>
          _$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl<
                  ChatCompletionResponseUsagePromptTokensDetails>(
              this as ChatCompletionResponseUsagePromptTokensDetails,
              _$identity);

  /// Serializes this ChatCompletionResponseUsagePromptTokensDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponseUsagePromptTokensDetails &&
            (identical(other.audioTokens, audioTokens) ||
                other.audioTokens == audioTokens) &&
            (identical(other.cachedTokens, cachedTokens) ||
                other.cachedTokens == cachedTokens) &&
            (identical(other.imageTokens, imageTokens) ||
                other.imageTokens == imageTokens) &&
            (identical(other.textTokens, textTokens) ||
                other.textTokens == textTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, audioTokens, cachedTokens, imageTokens, textTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsagePromptTokensDetails(audioTokens: $audioTokens, cachedTokens: $cachedTokens, imageTokens: $imageTokens, textTokens: $textTokens)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<
    $Res> {
  factory $ChatCompletionResponseUsagePromptTokensDetailsCopyWith(
          ChatCompletionResponseUsagePromptTokensDetails value,
          $Res Function(ChatCompletionResponseUsagePromptTokensDetails) _then) =
      _$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'audio_tokens') int audioTokens,
      @JsonKey(name: 'cached_tokens') int cachedTokens,
      @JsonKey(name: 'image_tokens') int imageTokens,
      @JsonKey(name: 'text_tokens') int textTokens});
}

/// @nodoc
class _$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl<$Res>
    implements $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res> {
  _$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl(
      this._self, this._then);

  final ChatCompletionResponseUsagePromptTokensDetails _self;
  final $Res Function(ChatCompletionResponseUsagePromptTokensDetails) _then;

  /// Create a copy of ChatCompletionResponseUsagePromptTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioTokens = null,
    Object? cachedTokens = null,
    Object? imageTokens = null,
    Object? textTokens = null,
  }) {
    return _then(_self.copyWith(
      audioTokens: null == audioTokens
          ? _self.audioTokens
          : audioTokens // ignore: cast_nullable_to_non_nullable
              as int,
      cachedTokens: null == cachedTokens
          ? _self.cachedTokens
          : cachedTokens // ignore: cast_nullable_to_non_nullable
              as int,
      imageTokens: null == imageTokens
          ? _self.imageTokens
          : imageTokens // ignore: cast_nullable_to_non_nullable
              as int,
      textTokens: null == textTokens
          ? _self.textTokens
          : textTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseUsagePromptTokensDetails
    extends ChatCompletionResponseUsagePromptTokensDetails {
  _ChatCompletionResponseUsagePromptTokensDetails(
      {@JsonKey(name: 'audio_tokens') required this.audioTokens,
      @JsonKey(name: 'cached_tokens') required this.cachedTokens,
      @JsonKey(name: 'image_tokens') required this.imageTokens,
      @JsonKey(name: 'text_tokens') required this.textTokens})
      : super._();
  factory _ChatCompletionResponseUsagePromptTokensDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsagePromptTokensDetailsFromJson(json);

  @override
  @JsonKey(name: 'audio_tokens')
  final int audioTokens;
  @override
  @JsonKey(name: 'cached_tokens')
  final int cachedTokens;
  @override
  @JsonKey(name: 'image_tokens')
  final int imageTokens;
  @override
  @JsonKey(name: 'text_tokens')
  final int textTokens;

  /// Create a copy of ChatCompletionResponseUsagePromptTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseUsagePromptTokensDetailsCopyWith<
          _ChatCompletionResponseUsagePromptTokensDetails>
      get copyWith =>
          __$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl<
                  _ChatCompletionResponseUsagePromptTokensDetails>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseUsagePromptTokensDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponseUsagePromptTokensDetails &&
            (identical(other.audioTokens, audioTokens) ||
                other.audioTokens == audioTokens) &&
            (identical(other.cachedTokens, cachedTokens) ||
                other.cachedTokens == cachedTokens) &&
            (identical(other.imageTokens, imageTokens) ||
                other.imageTokens == imageTokens) &&
            (identical(other.textTokens, textTokens) ||
                other.textTokens == textTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, audioTokens, cachedTokens, imageTokens, textTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsagePromptTokensDetails(audioTokens: $audioTokens, cachedTokens: $cachedTokens, imageTokens: $imageTokens, textTokens: $textTokens)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseUsagePromptTokensDetailsCopyWith<
        $Res>
    implements $ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res> {
  factory _$ChatCompletionResponseUsagePromptTokensDetailsCopyWith(
          _ChatCompletionResponseUsagePromptTokensDetails value,
          $Res Function(_ChatCompletionResponseUsagePromptTokensDetails)
              _then) =
      __$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'audio_tokens') int audioTokens,
      @JsonKey(name: 'cached_tokens') int cachedTokens,
      @JsonKey(name: 'image_tokens') int imageTokens,
      @JsonKey(name: 'text_tokens') int textTokens});
}

/// @nodoc
class __$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl<$Res>
    implements _$ChatCompletionResponseUsagePromptTokensDetailsCopyWith<$Res> {
  __$ChatCompletionResponseUsagePromptTokensDetailsCopyWithImpl(
      this._self, this._then);

  final _ChatCompletionResponseUsagePromptTokensDetails _self;
  final $Res Function(_ChatCompletionResponseUsagePromptTokensDetails) _then;

  /// Create a copy of ChatCompletionResponseUsagePromptTokensDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? audioTokens = null,
    Object? cachedTokens = null,
    Object? imageTokens = null,
    Object? textTokens = null,
  }) {
    return _then(_ChatCompletionResponseUsagePromptTokensDetails(
      audioTokens: null == audioTokens
          ? _self.audioTokens
          : audioTokens // ignore: cast_nullable_to_non_nullable
              as int,
      cachedTokens: null == cachedTokens
          ? _self.cachedTokens
          : cachedTokens // ignore: cast_nullable_to_non_nullable
              as int,
      imageTokens: null == imageTokens
          ? _self.imageTokens
          : imageTokens // ignore: cast_nullable_to_non_nullable
              as int,
      textTokens: null == textTokens
          ? _self.textTokens
          : textTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
