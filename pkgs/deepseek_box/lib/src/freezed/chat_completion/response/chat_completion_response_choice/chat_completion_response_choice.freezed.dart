// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionResponseChoice {
  int get index;
  ChatCompletionResponseMessage get message;
  @JsonKey(name: 'finish_reason')
  String? get finishReason;
  Map<String, dynamic>? get logprobs;

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseChoiceCopyWith<ChatCompletionResponseChoice>
      get copyWith => _$ChatCompletionResponseChoiceCopyWithImpl<
              ChatCompletionResponseChoice>(
          this as ChatCompletionResponseChoice, _$identity);

  /// Serializes this ChatCompletionResponseChoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponseChoice &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality().equals(other.logprobs, logprobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason,
      const DeepCollectionEquality().hash(logprobs));

  @override
  String toString() {
    return 'ChatCompletionResponseChoice(index: $index, message: $message, finishReason: $finishReason, logprobs: $logprobs)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseChoiceCopyWith<$Res> {
  factory $ChatCompletionResponseChoiceCopyWith(
          ChatCompletionResponseChoice value,
          $Res Function(ChatCompletionResponseChoice) _then) =
      _$ChatCompletionResponseChoiceCopyWithImpl;
  @useResult
  $Res call(
      {int index,
      ChatCompletionResponseMessage message,
      @JsonKey(name: 'finish_reason') String? finishReason,
      Map<String, dynamic>? logprobs});

  $ChatCompletionResponseMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatCompletionResponseChoiceCopyWithImpl<$Res>
    implements $ChatCompletionResponseChoiceCopyWith<$Res> {
  _$ChatCompletionResponseChoiceCopyWithImpl(this._self, this._then);

  final ChatCompletionResponseChoice _self;
  final $Res Function(ChatCompletionResponseChoice) _then;

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_self.copyWith(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseMessage,
      finishReason: freezed == finishReason
          ? _self.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      logprobs: freezed == logprobs
          ? _self.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseMessageCopyWith<$Res> get message {
    return $ChatCompletionResponseMessageCopyWith<$Res>(_self.message, (value) {
      return _then(_self.copyWith(message: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionResponseChoice].
extension ChatCompletionResponseChoicePatterns on ChatCompletionResponseChoice {
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
    TResult Function(_ChatCompletionResponseChoice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice() when $default != null:
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
    TResult Function(_ChatCompletionResponseChoice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice():
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
    TResult? Function(_ChatCompletionResponseChoice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice() when $default != null:
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
            int index,
            ChatCompletionResponseMessage message,
            @JsonKey(name: 'finish_reason') String? finishReason,
            Map<String, dynamic>? logprobs)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice() when $default != null:
        return $default(
            _that.index, _that.message, _that.finishReason, _that.logprobs);
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
            int index,
            ChatCompletionResponseMessage message,
            @JsonKey(name: 'finish_reason') String? finishReason,
            Map<String, dynamic>? logprobs)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice():
        return $default(
            _that.index, _that.message, _that.finishReason, _that.logprobs);
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
            int index,
            ChatCompletionResponseMessage message,
            @JsonKey(name: 'finish_reason') String? finishReason,
            Map<String, dynamic>? logprobs)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseChoice() when $default != null:
        return $default(
            _that.index, _that.message, _that.finishReason, _that.logprobs);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseChoice extends ChatCompletionResponseChoice {
  _ChatCompletionResponseChoice(
      {required this.index,
      required this.message,
      @JsonKey(name: 'finish_reason') this.finishReason,
      final Map<String, dynamic>? logprobs})
      : _logprobs = logprobs,
        super._();
  factory _ChatCompletionResponseChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseChoiceFromJson(json);

  @override
  final int index;
  @override
  final ChatCompletionResponseMessage message;
  @override
  @JsonKey(name: 'finish_reason')
  final String? finishReason;
  final Map<String, dynamic>? _logprobs;
  @override
  Map<String, dynamic>? get logprobs {
    final value = _logprobs;
    if (value == null) return null;
    if (_logprobs is EqualUnmodifiableMapView) return _logprobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseChoiceCopyWith<_ChatCompletionResponseChoice>
      get copyWith => __$ChatCompletionResponseChoiceCopyWithImpl<
          _ChatCompletionResponseChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseChoiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponseChoice &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality().equals(other._logprobs, _logprobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason,
      const DeepCollectionEquality().hash(_logprobs));

  @override
  String toString() {
    return 'ChatCompletionResponseChoice(index: $index, message: $message, finishReason: $finishReason, logprobs: $logprobs)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseChoiceCopyWith<$Res>
    implements $ChatCompletionResponseChoiceCopyWith<$Res> {
  factory _$ChatCompletionResponseChoiceCopyWith(
          _ChatCompletionResponseChoice value,
          $Res Function(_ChatCompletionResponseChoice) _then) =
      __$ChatCompletionResponseChoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int index,
      ChatCompletionResponseMessage message,
      @JsonKey(name: 'finish_reason') String? finishReason,
      Map<String, dynamic>? logprobs});

  @override
  $ChatCompletionResponseMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$ChatCompletionResponseChoiceCopyWithImpl<$Res>
    implements _$ChatCompletionResponseChoiceCopyWith<$Res> {
  __$ChatCompletionResponseChoiceCopyWithImpl(this._self, this._then);

  final _ChatCompletionResponseChoice _self;
  final $Res Function(_ChatCompletionResponseChoice) _then;

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_ChatCompletionResponseChoice(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseMessage,
      finishReason: freezed == finishReason
          ? _self.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      logprobs: freezed == logprobs
          ? _self._logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ChatCompletionResponseChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseMessageCopyWith<$Res> get message {
    return $ChatCompletionResponseMessageCopyWith<$Res>(_self.message, (value) {
      return _then(_self.copyWith(message: value));
    });
  }
}

// dart format on
