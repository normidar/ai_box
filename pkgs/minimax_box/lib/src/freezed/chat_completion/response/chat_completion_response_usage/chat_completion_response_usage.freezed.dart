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
                other.totalTokens == totalTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, completionTokens, promptTokens, totalTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens)';
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
      @JsonKey(name: 'total_tokens') int totalTokens});
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
    ));
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
            @JsonKey(name: 'total_tokens') int totalTokens)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(
            _that.completionTokens, _that.promptTokens, _that.totalTokens);
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
            @JsonKey(name: 'total_tokens') int totalTokens)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage():
        return $default(
            _that.completionTokens, _that.promptTokens, _that.totalTokens);
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
            @JsonKey(name: 'total_tokens') int totalTokens)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseUsage() when $default != null:
        return $default(
            _that.completionTokens, _that.promptTokens, _that.totalTokens);
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
      @JsonKey(name: 'total_tokens') required this.totalTokens})
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
                other.totalTokens == totalTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, completionTokens, promptTokens, totalTokens);

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens)';
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
      @JsonKey(name: 'total_tokens') int totalTokens});
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
    ));
  }
}

// dart format on
