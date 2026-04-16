// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionMessage {
  ChatCompletionRole get role;
  String get content;
  String? get name;

  /// Create a copy of ChatCompletionMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionMessageCopyWith<ChatCompletionMessage> get copyWith =>
      _$ChatCompletionMessageCopyWithImpl<ChatCompletionMessage>(
          this as ChatCompletionMessage, _$identity);

  /// Serializes this ChatCompletionMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, name);

  @override
  String toString() {
    return 'ChatCompletionMessage(role: $role, content: $content, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionMessageCopyWith<$Res> {
  factory $ChatCompletionMessageCopyWith(ChatCompletionMessage value,
          $Res Function(ChatCompletionMessage) _then) =
      _$ChatCompletionMessageCopyWithImpl;
  @useResult
  $Res call({ChatCompletionRole role, String content, String? name});
}

/// @nodoc
class _$ChatCompletionMessageCopyWithImpl<$Res>
    implements $ChatCompletionMessageCopyWith<$Res> {
  _$ChatCompletionMessageCopyWithImpl(this._self, this._then);

  final ChatCompletionMessage _self;
  final $Res Function(ChatCompletionMessage) _then;

  /// Create a copy of ChatCompletionMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatCompletionRole,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionMessage].
extension ChatCompletionMessagePatterns on ChatCompletionMessage {
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
    TResult Function(_ChatCompletionMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage() when $default != null:
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
    TResult Function(_ChatCompletionMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage():
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
    TResult? Function(_ChatCompletionMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage() when $default != null:
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
    TResult Function(ChatCompletionRole role, String content, String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage() when $default != null:
        return $default(_that.role, _that.content, _that.name);
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
    TResult Function(ChatCompletionRole role, String content, String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage():
        return $default(_that.role, _that.content, _that.name);
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
    TResult? Function(ChatCompletionRole role, String content, String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionMessage() when $default != null:
        return $default(_that.role, _that.content, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionMessage extends ChatCompletionMessage {
  _ChatCompletionMessage({required this.role, required this.content, this.name})
      : super._();
  factory _ChatCompletionMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionMessageFromJson(json);

  @override
  final ChatCompletionRole role;
  @override
  final String content;
  @override
  final String? name;

  /// Create a copy of ChatCompletionMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionMessageCopyWith<_ChatCompletionMessage> get copyWith =>
      __$ChatCompletionMessageCopyWithImpl<_ChatCompletionMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, name);

  @override
  String toString() {
    return 'ChatCompletionMessage(role: $role, content: $content, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionMessageCopyWith<$Res>
    implements $ChatCompletionMessageCopyWith<$Res> {
  factory _$ChatCompletionMessageCopyWith(_ChatCompletionMessage value,
          $Res Function(_ChatCompletionMessage) _then) =
      __$ChatCompletionMessageCopyWithImpl;
  @override
  @useResult
  $Res call({ChatCompletionRole role, String content, String? name});
}

/// @nodoc
class __$ChatCompletionMessageCopyWithImpl<$Res>
    implements _$ChatCompletionMessageCopyWith<$Res> {
  __$ChatCompletionMessageCopyWithImpl(this._self, this._then);

  final _ChatCompletionMessage _self;
  final $Res Function(_ChatCompletionMessage) _then;

  /// Create a copy of ChatCompletionMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? name = freezed,
  }) {
    return _then(_ChatCompletionMessage(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatCompletionRole,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
