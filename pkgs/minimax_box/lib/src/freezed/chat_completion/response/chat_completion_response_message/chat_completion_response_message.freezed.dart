// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionResponseMessage {
  String get role;
  String? get content;

  /// reasoning_split=true のとき Thinking プロセスが入る
  @JsonKey(name: 'reasoning_content')
  String? get reasoningContent;
  @JsonKey(name: 'tool_calls')
  List<Map<String, dynamic>>? get toolCalls;

  /// Create a copy of ChatCompletionResponseMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseMessageCopyWith<ChatCompletionResponseMessage>
      get copyWith => _$ChatCompletionResponseMessageCopyWithImpl<
              ChatCompletionResponseMessage>(
          this as ChatCompletionResponseMessage, _$identity);

  /// Serializes this ChatCompletionResponseMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponseMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.reasoningContent, reasoningContent) ||
                other.reasoningContent == reasoningContent) &&
            const DeepCollectionEquality().equals(other.toolCalls, toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, reasoningContent,
      const DeepCollectionEquality().hash(toolCalls));

  @override
  String toString() {
    return 'ChatCompletionResponseMessage(role: $role, content: $content, reasoningContent: $reasoningContent, toolCalls: $toolCalls)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseMessageCopyWith<$Res> {
  factory $ChatCompletionResponseMessageCopyWith(
          ChatCompletionResponseMessage value,
          $Res Function(ChatCompletionResponseMessage) _then) =
      _$ChatCompletionResponseMessageCopyWithImpl;
  @useResult
  $Res call(
      {String role,
      String? content,
      @JsonKey(name: 'reasoning_content') String? reasoningContent,
      @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls});
}

/// @nodoc
class _$ChatCompletionResponseMessageCopyWithImpl<$Res>
    implements $ChatCompletionResponseMessageCopyWith<$Res> {
  _$ChatCompletionResponseMessageCopyWithImpl(this._self, this._then);

  final ChatCompletionResponseMessage _self;
  final $Res Function(ChatCompletionResponseMessage) _then;

  /// Create a copy of ChatCompletionResponseMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = freezed,
    Object? reasoningContent = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_self.copyWith(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reasoningContent: freezed == reasoningContent
          ? _self.reasoningContent
          : reasoningContent // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _self.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionResponseMessage].
extension ChatCompletionResponseMessagePatterns
    on ChatCompletionResponseMessage {
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
    TResult Function(_ChatCompletionResponseMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage() when $default != null:
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
    TResult Function(_ChatCompletionResponseMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage():
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
    TResult? Function(_ChatCompletionResponseMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage() when $default != null:
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
            String role,
            String? content,
            @JsonKey(name: 'reasoning_content') String? reasoningContent,
            @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage() when $default != null:
        return $default(
            _that.role, _that.content, _that.reasoningContent, _that.toolCalls);
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
            String role,
            String? content,
            @JsonKey(name: 'reasoning_content') String? reasoningContent,
            @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage():
        return $default(
            _that.role, _that.content, _that.reasoningContent, _that.toolCalls);
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
            String role,
            String? content,
            @JsonKey(name: 'reasoning_content') String? reasoningContent,
            @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponseMessage() when $default != null:
        return $default(
            _that.role, _that.content, _that.reasoningContent, _that.toolCalls);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponseMessage extends ChatCompletionResponseMessage {
  _ChatCompletionResponseMessage(
      {required this.role,
      this.content,
      @JsonKey(name: 'reasoning_content') this.reasoningContent,
      @JsonKey(name: 'tool_calls') final List<Map<String, dynamic>>? toolCalls})
      : _toolCalls = toolCalls,
        super._();
  factory _ChatCompletionResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseMessageFromJson(json);

  @override
  final String role;
  @override
  final String? content;

  /// reasoning_split=true のとき Thinking プロセスが入る
  @override
  @JsonKey(name: 'reasoning_content')
  final String? reasoningContent;
  final List<Map<String, dynamic>>? _toolCalls;
  @override
  @JsonKey(name: 'tool_calls')
  List<Map<String, dynamic>>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ChatCompletionResponseMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseMessageCopyWith<_ChatCompletionResponseMessage>
      get copyWith => __$ChatCompletionResponseMessageCopyWithImpl<
          _ChatCompletionResponseMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponseMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.reasoningContent, reasoningContent) ||
                other.reasoningContent == reasoningContent) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, reasoningContent,
      const DeepCollectionEquality().hash(_toolCalls));

  @override
  String toString() {
    return 'ChatCompletionResponseMessage(role: $role, content: $content, reasoningContent: $reasoningContent, toolCalls: $toolCalls)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseMessageCopyWith<$Res>
    implements $ChatCompletionResponseMessageCopyWith<$Res> {
  factory _$ChatCompletionResponseMessageCopyWith(
          _ChatCompletionResponseMessage value,
          $Res Function(_ChatCompletionResponseMessage) _then) =
      __$ChatCompletionResponseMessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String role,
      String? content,
      @JsonKey(name: 'reasoning_content') String? reasoningContent,
      @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls});
}

/// @nodoc
class __$ChatCompletionResponseMessageCopyWithImpl<$Res>
    implements _$ChatCompletionResponseMessageCopyWith<$Res> {
  __$ChatCompletionResponseMessageCopyWithImpl(this._self, this._then);

  final _ChatCompletionResponseMessage _self;
  final $Res Function(_ChatCompletionResponseMessage) _then;

  /// Create a copy of ChatCompletionResponseMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = null,
    Object? content = freezed,
    Object? reasoningContent = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_ChatCompletionResponseMessage(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reasoningContent: freezed == reasoningContent
          ? _self.reasoningContent
          : reasoningContent // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _self._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

// dart format on
