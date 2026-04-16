// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @JsonKey(name: 'prompt_cache_hit_tokens')
  int? get promptCacheHitTokens;
  @JsonKey(name: 'prompt_cache_miss_tokens')
  int? get promptCacheMissTokens;
  @JsonKey(name: 'completion_tokens_details')
  ChatCompletionResponseUsageCompletionTokensDetails?
      get completionTokensDetails;

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
            (identical(other.promptCacheHitTokens, promptCacheHitTokens) ||
                other.promptCacheHitTokens == promptCacheHitTokens) &&
            (identical(other.promptCacheMissTokens, promptCacheMissTokens) ||
                other.promptCacheMissTokens == promptCacheMissTokens) &&
            (identical(
                    other.completionTokensDetails, completionTokensDetails) ||
                other.completionTokensDetails == completionTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      completionTokens,
      promptTokens,
      totalTokens,
      promptCacheHitTokens,
      promptCacheMissTokens,
      completionTokensDetails);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, promptCacheHitTokens: $promptCacheHitTokens, promptCacheMissTokens: $promptCacheMissTokens, completionTokensDetails: $completionTokensDetails)';
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
      @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
      @JsonKey(name: 'prompt_cache_miss_tokens') int? promptCacheMissTokens,
      @JsonKey(name: 'completion_tokens_details')
      ChatCompletionResponseUsageCompletionTokensDetails?
          completionTokensDetails});

  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails;
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
    Object? promptCacheHitTokens = freezed,
    Object? promptCacheMissTokens = freezed,
    Object? completionTokensDetails = freezed,
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
      promptCacheHitTokens: freezed == promptCacheHitTokens
          ? _self.promptCacheHitTokens
          : promptCacheHitTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      promptCacheMissTokens: freezed == promptCacheMissTokens
          ? _self.promptCacheMissTokens
          : promptCacheMissTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokensDetails: freezed == completionTokensDetails
          ? _self.completionTokensDetails
          : completionTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsageCompletionTokensDetails?,
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
}

/// Adds pattern-matching-related methods to [ChatCompletionResponseUsage].
extension ChatCompletionResponseUsagePatterns on ChatCompletionResponseUsage {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatCompletionResponseUsage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatCompletionResponseUsage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatCompletionResponseUsage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'completion_tokens') int completionTokens,
            @JsonKey(name: 'prompt_tokens') int promptTokens,
            @JsonKey(name: 'total_tokens') int totalTokens,
            @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
            @JsonKey(name: 'prompt_cache_miss_tokens')
            int? promptCacheMissTokens,
            @JsonKey(name: 'completion_tokens_details')
            ChatCompletionResponseUsageCompletionTokensDetails?
                completionTokensDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(
            _that.completionTokens,
            _that.promptTokens,
            _that.totalTokens,
            _that.promptCacheHitTokens,
            _that.promptCacheMissTokens,
            _that.completionTokensDetails);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'completion_tokens') int completionTokens,
            @JsonKey(name: 'prompt_tokens') int promptTokens,
            @JsonKey(name: 'total_tokens') int totalTokens,
            @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
            @JsonKey(name: 'prompt_cache_miss_tokens')
            int? promptCacheMissTokens,
            @JsonKey(name: 'completion_tokens_details')
            ChatCompletionResponseUsageCompletionTokensDetails?
                completionTokensDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage():
        return $default(
            _that.completionTokens,
            _that.promptTokens,
            _that.totalTokens,
            _that.promptCacheHitTokens,
            _that.promptCacheMissTokens,
            _that.completionTokensDetails);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'completion_tokens') int completionTokens,
            @JsonKey(name: 'prompt_tokens') int promptTokens,
            @JsonKey(name: 'total_tokens') int totalTokens,
            @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
            @JsonKey(name: 'prompt_cache_miss_tokens')
            int? promptCacheMissTokens,
            @JsonKey(name: 'completion_tokens_details')
            ChatCompletionResponseUsageCompletionTokensDetails?
                completionTokensDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(
            _that.completionTokens,
            _that.promptTokens,
            _that.totalTokens,
            _that.promptCacheHitTokens,
            _that.promptCacheMissTokens,
            _that.completionTokensDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseUsage extends ChatCompletionResponseUsage {
  _ChatCompletionResponseUsage(
      {@JsonKey(name: 'completion_tokens') required this.completionTokens,
      @JsonKey(name: 'prompt_tokens') required this.promptTokens,
      @JsonKey(name: 'total_tokens') required this.totalTokens,
      @JsonKey(name: 'prompt_cache_hit_tokens') this.promptCacheHitTokens,
      @JsonKey(name: 'prompt_cache_miss_tokens') this.promptCacheMissTokens,
      @JsonKey(name: 'completion_tokens_details') this.completionTokensDetails})
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
  @JsonKey(name: 'prompt_cache_hit_tokens')
  final int? promptCacheHitTokens;
  @override
  @JsonKey(name: 'prompt_cache_miss_tokens')
  final int? promptCacheMissTokens;
  @override
  @JsonKey(name: 'completion_tokens_details')
  final ChatCompletionResponseUsageCompletionTokensDetails?
      completionTokensDetails;

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
            (identical(other.promptCacheHitTokens, promptCacheHitTokens) ||
                other.promptCacheHitTokens == promptCacheHitTokens) &&
            (identical(other.promptCacheMissTokens, promptCacheMissTokens) ||
                other.promptCacheMissTokens == promptCacheMissTokens) &&
            (identical(
                    other.completionTokensDetails, completionTokensDetails) ||
                other.completionTokensDetails == completionTokensDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      completionTokens,
      promptTokens,
      totalTokens,
      promptCacheHitTokens,
      promptCacheMissTokens,
      completionTokensDetails);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, promptCacheHitTokens: $promptCacheHitTokens, promptCacheMissTokens: $promptCacheMissTokens, completionTokensDetails: $completionTokensDetails)';
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
      @JsonKey(name: 'prompt_cache_hit_tokens') int? promptCacheHitTokens,
      @JsonKey(name: 'prompt_cache_miss_tokens') int? promptCacheMissTokens,
      @JsonKey(name: 'completion_tokens_details')
      ChatCompletionResponseUsageCompletionTokensDetails?
          completionTokensDetails});

  @override
  $ChatCompletionResponseUsageCompletionTokensDetailsCopyWith<$Res>?
      get completionTokensDetails;
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
    Object? promptCacheHitTokens = freezed,
    Object? promptCacheMissTokens = freezed,
    Object? completionTokensDetails = freezed,
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
      promptCacheHitTokens: freezed == promptCacheHitTokens
          ? _self.promptCacheHitTokens
          : promptCacheHitTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      promptCacheMissTokens: freezed == promptCacheMissTokens
          ? _self.promptCacheMissTokens
          : promptCacheMissTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokensDetails: freezed == completionTokensDetails
          ? _self.completionTokensDetails
          : completionTokensDetails // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsageCompletionTokensDetails?,
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
}

/// @nodoc
mixin _$ChatCompletionResponseUsageCompletionTokensDetails {
  @JsonKey(name: 'reasoning_tokens')
  int get reasoningTokens;

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
            (identical(other.reasoningTokens, reasoningTokens) ||
                other.reasoningTokens == reasoningTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reasoningTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsageCompletionTokensDetails(reasoningTokens: $reasoningTokens)';
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
  $Res call({@JsonKey(name: 'reasoning_tokens') int reasoningTokens});
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
    Object? reasoningTokens = null,
  }) {
    return _then(_self.copyWith(
      reasoningTokens: null == reasoningTokens
          ? _self.reasoningTokens
          : reasoningTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionResponseUsageCompletionTokensDetails].
extension ChatCompletionResponseUsageCompletionTokensDetailsPatterns
    on ChatCompletionResponseUsageCompletionTokensDetails {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatCompletionResponseUsageCompletionTokensDetails value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails()
          when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatCompletionResponseUsageCompletionTokensDetails value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(
            _ChatCompletionResponseUsageCompletionTokensDetails value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails()
          when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'reasoning_tokens') int reasoningTokens)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails()
          when $default != null:
        return $default(_that.reasoningTokens);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'reasoning_tokens') int reasoningTokens)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails():
        return $default(_that.reasoningTokens);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'reasoning_tokens') int reasoningTokens)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsageCompletionTokensDetails()
          when $default != null:
        return $default(_that.reasoningTokens);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseUsageCompletionTokensDetails
    extends ChatCompletionResponseUsageCompletionTokensDetails {
  _ChatCompletionResponseUsageCompletionTokensDetails(
      {@JsonKey(name: 'reasoning_tokens') required this.reasoningTokens})
      : super._();
  factory _ChatCompletionResponseUsageCompletionTokensDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCompletionResponseUsageCompletionTokensDetailsFromJson(json);

  @override
  @JsonKey(name: 'reasoning_tokens')
  final int reasoningTokens;

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
            (identical(other.reasoningTokens, reasoningTokens) ||
                other.reasoningTokens == reasoningTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reasoningTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsageCompletionTokensDetails(reasoningTokens: $reasoningTokens)';
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
  $Res call({@JsonKey(name: 'reasoning_tokens') int reasoningTokens});
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
    Object? reasoningTokens = null,
  }) {
    return _then(_ChatCompletionResponseUsageCompletionTokensDetails(
      reasoningTokens: null == reasoningTokens
          ? _self.reasoningTokens
          : reasoningTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
