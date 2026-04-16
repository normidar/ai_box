// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionResponse {
  List<ChatCompletionResponseChoice> get choices;
  int get created;
  String get id;
  String get model;
  String get object;
  ChatCompletionResponseUsage? get usage;

  /// コンテンツポリシー違反フラグ（入力側）
  @JsonKey(name: 'input_sensitive')
  bool? get inputSensitive;

  /// コンテンツポリシー違反フラグ（出力側）
  @JsonKey(name: 'output_sensitive')
  bool? get outputSensitive;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      _$ChatCompletionResponseCopyWithImpl<ChatCompletionResponse>(
          this as ChatCompletionResponse, _$identity);

  /// Serializes this ChatCompletionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponse &&
            const DeepCollectionEquality().equals(other.choices, choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.inputSensitive, inputSensitive) ||
                other.inputSensitive == inputSensitive) &&
            (identical(other.outputSensitive, outputSensitive) ||
                other.outputSensitive == outputSensitive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choices),
      created,
      id,
      model,
      object,
      usage,
      inputSensitive,
      outputSensitive);

  @override
  String toString() {
    return 'ChatCompletionResponse(choices: $choices, created: $created, id: $id, model: $model, object: $object, usage: $usage, inputSensitive: $inputSensitive, outputSensitive: $outputSensitive)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) _then) =
      _$ChatCompletionResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<ChatCompletionResponseChoice> choices,
      int created,
      String id,
      String model,
      String object,
      ChatCompletionResponseUsage? usage,
      @JsonKey(name: 'input_sensitive') bool? inputSensitive,
      @JsonKey(name: 'output_sensitive') bool? outputSensitive});

  $ChatCompletionResponseUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._self, this._then);

  final ChatCompletionResponse _self;
  final $Res Function(ChatCompletionResponse) _then;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? created = null,
    Object? id = null,
    Object? model = null,
    Object? object = null,
    Object? usage = freezed,
    Object? inputSensitive = freezed,
    Object? outputSensitive = freezed,
  }) {
    return _then(_self.copyWith(
      choices: null == choices
          ? _self.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage?,
      inputSensitive: freezed == inputSensitive
          ? _self.inputSensitive
          : inputSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      outputSensitive: freezed == outputSensitive
          ? _self.outputSensitive
          : outputSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCopyWith<$Res>(_self.usage!, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionResponse].
extension ChatCompletionResponsePatterns on ChatCompletionResponse {
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
    TResult Function(_ChatCompletionResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse() when $default != null:
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
    TResult Function(_ChatCompletionResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse():
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
    TResult? Function(_ChatCompletionResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse() when $default != null:
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
            List<ChatCompletionResponseChoice> choices,
            int created,
            String id,
            String model,
            String object,
            ChatCompletionResponseUsage? usage,
            @JsonKey(name: 'input_sensitive') bool? inputSensitive,
            @JsonKey(name: 'output_sensitive') bool? outputSensitive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse() when $default != null:
        return $default(
            _that.choices,
            _that.created,
            _that.id,
            _that.model,
            _that.object,
            _that.usage,
            _that.inputSensitive,
            _that.outputSensitive);
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
            List<ChatCompletionResponseChoice> choices,
            int created,
            String id,
            String model,
            String object,
            ChatCompletionResponseUsage? usage,
            @JsonKey(name: 'input_sensitive') bool? inputSensitive,
            @JsonKey(name: 'output_sensitive') bool? outputSensitive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse():
        return $default(
            _that.choices,
            _that.created,
            _that.id,
            _that.model,
            _that.object,
            _that.usage,
            _that.inputSensitive,
            _that.outputSensitive);
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
            List<ChatCompletionResponseChoice> choices,
            int created,
            String id,
            String model,
            String object,
            ChatCompletionResponseUsage? usage,
            @JsonKey(name: 'input_sensitive') bool? inputSensitive,
            @JsonKey(name: 'output_sensitive') bool? outputSensitive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionResponse() when $default != null:
        return $default(
            _that.choices,
            _that.created,
            _that.id,
            _that.model,
            _that.object,
            _that.usage,
            _that.inputSensitive,
            _that.outputSensitive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponse extends ChatCompletionResponse {
  _ChatCompletionResponse(
      {required final List<ChatCompletionResponseChoice> choices,
      required this.created,
      required this.id,
      required this.model,
      required this.object,
      this.usage,
      @JsonKey(name: 'input_sensitive') this.inputSensitive,
      @JsonKey(name: 'output_sensitive') this.outputSensitive})
      : _choices = choices,
        super._();
  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);

  final List<ChatCompletionResponseChoice> _choices;
  @override
  List<ChatCompletionResponseChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final int created;
  @override
  final String id;
  @override
  final String model;
  @override
  final String object;
  @override
  final ChatCompletionResponseUsage? usage;

  /// コンテンツポリシー違反フラグ（入力側）
  @override
  @JsonKey(name: 'input_sensitive')
  final bool? inputSensitive;

  /// コンテンツポリシー違反フラグ（出力側）
  @override
  @JsonKey(name: 'output_sensitive')
  final bool? outputSensitive;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseCopyWith<_ChatCompletionResponse> get copyWith =>
      __$ChatCompletionResponseCopyWithImpl<_ChatCompletionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponse &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.inputSensitive, inputSensitive) ||
                other.inputSensitive == inputSensitive) &&
            (identical(other.outputSensitive, outputSensitive) ||
                other.outputSensitive == outputSensitive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_choices),
      created,
      id,
      model,
      object,
      usage,
      inputSensitive,
      outputSensitive);

  @override
  String toString() {
    return 'ChatCompletionResponse(choices: $choices, created: $created, id: $id, model: $model, object: $object, usage: $usage, inputSensitive: $inputSensitive, outputSensitive: $outputSensitive)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$ChatCompletionResponseCopyWith(_ChatCompletionResponse value,
          $Res Function(_ChatCompletionResponse) _then) =
      __$ChatCompletionResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChatCompletionResponseChoice> choices,
      int created,
      String id,
      String model,
      String object,
      ChatCompletionResponseUsage? usage,
      @JsonKey(name: 'input_sensitive') bool? inputSensitive,
      @JsonKey(name: 'output_sensitive') bool? outputSensitive});

  @override
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$ChatCompletionResponseCopyWithImpl<$Res>
    implements _$ChatCompletionResponseCopyWith<$Res> {
  __$ChatCompletionResponseCopyWithImpl(this._self, this._then);

  final _ChatCompletionResponse _self;
  final $Res Function(_ChatCompletionResponse) _then;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? choices = null,
    Object? created = null,
    Object? id = null,
    Object? model = null,
    Object? object = null,
    Object? usage = freezed,
    Object? inputSensitive = freezed,
    Object? outputSensitive = freezed,
  }) {
    return _then(_ChatCompletionResponse(
      choices: null == choices
          ? _self._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage?,
      inputSensitive: freezed == inputSensitive
          ? _self.inputSensitive
          : inputSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      outputSensitive: freezed == outputSensitive
          ? _self.outputSensitive
          : outputSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCopyWith<$Res>(_self.usage!, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

// dart format on
