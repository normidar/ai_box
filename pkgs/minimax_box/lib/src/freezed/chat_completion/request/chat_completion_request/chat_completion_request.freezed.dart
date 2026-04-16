// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionRequest {
  List<ChatCompletionMessage> get messages;
  String get model;
  @JsonKey(name: 'max_tokens')
  int? get maxTokens;
  double? get temperature;
  @JsonKey(name: 'top_p')
  double? get topP;
  List<String>? get stop;
  int? get seed;
  bool? get stream;
  @JsonKey(name: 'response_format')
  Map<String, dynamic>? get responseFormat;
  List<Map<String, dynamic>>? get tools;
  @JsonKey(name: 'tool_choice')
  dynamic get toolChoice;

  /// DeepSeek-R1系と同様にThinkingプロセスを分離して取得する
  @JsonKey(name: 'reasoning_split')
  bool? get reasoningSplit;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith =>
      _$ChatCompletionRequestCopyWithImpl<ChatCompletionRequest>(
          this as ChatCompletionRequest, _$identity);

  /// Serializes this ChatCompletionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionRequest &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            const DeepCollectionEquality().equals(other.stop, stop) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality()
                .equals(other.responseFormat, responseFormat) &&
            const DeepCollectionEquality().equals(other.tools, tools) &&
            const DeepCollectionEquality()
                .equals(other.toolChoice, toolChoice) &&
            (identical(other.reasoningSplit, reasoningSplit) ||
                other.reasoningSplit == reasoningSplit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      model,
      maxTokens,
      temperature,
      topP,
      const DeepCollectionEquality().hash(stop),
      seed,
      stream,
      const DeepCollectionEquality().hash(responseFormat),
      const DeepCollectionEquality().hash(tools),
      const DeepCollectionEquality().hash(toolChoice),
      reasoningSplit);

  @override
  String toString() {
    return 'ChatCompletionRequest(messages: $messages, model: $model, maxTokens: $maxTokens, temperature: $temperature, topP: $topP, stop: $stop, seed: $seed, stream: $stream, responseFormat: $responseFormat, tools: $tools, toolChoice: $toolChoice, reasoningSplit: $reasoningSplit)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionRequestCopyWith<$Res> {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value,
          $Res Function(ChatCompletionRequest) _then) =
      _$ChatCompletionRequestCopyWithImpl;
  @useResult
  $Res call(
      {List<ChatCompletionMessage> messages,
      String model,
      @JsonKey(name: 'max_tokens') int? maxTokens,
      double? temperature,
      @JsonKey(name: 'top_p') double? topP,
      List<String>? stop,
      int? seed,
      bool? stream,
      @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
      List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'tool_choice') dynamic toolChoice,
      @JsonKey(name: 'reasoning_split') bool? reasoningSplit});
}

/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final ChatCompletionRequest _self;
  final $Res Function(ChatCompletionRequest) _then;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? model = null,
    Object? maxTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? stop = freezed,
    Object? seed = freezed,
    Object? stream = freezed,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = freezed,
    Object? reasoningSplit = freezed,
  }) {
    return _then(_self.copyWith(
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionMessage>,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      maxTokens: freezed == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      stop: freezed == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseFormat: freezed == responseFormat
          ? _self.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tools: freezed == tools
          ? _self.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      toolChoice: freezed == toolChoice
          ? _self.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reasoningSplit: freezed == reasoningSplit
          ? _self.reasoningSplit
          : reasoningSplit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatCompletionRequest].
extension ChatCompletionRequestPatterns on ChatCompletionRequest {
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
    TResult Function(_ChatCompletionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest() when $default != null:
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
    TResult Function(_ChatCompletionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest():
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
    TResult? Function(_ChatCompletionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest() when $default != null:
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
            List<ChatCompletionMessage> messages,
            String model,
            @JsonKey(name: 'max_tokens') int? maxTokens,
            double? temperature,
            @JsonKey(name: 'top_p') double? topP,
            List<String>? stop,
            int? seed,
            bool? stream,
            @JsonKey(name: 'response_format')
            Map<String, dynamic>? responseFormat,
            List<Map<String, dynamic>>? tools,
            @JsonKey(name: 'tool_choice') dynamic toolChoice,
            @JsonKey(name: 'reasoning_split') bool? reasoningSplit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest() when $default != null:
        return $default(
            _that.messages,
            _that.model,
            _that.maxTokens,
            _that.temperature,
            _that.topP,
            _that.stop,
            _that.seed,
            _that.stream,
            _that.responseFormat,
            _that.tools,
            _that.toolChoice,
            _that.reasoningSplit);
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
            List<ChatCompletionMessage> messages,
            String model,
            @JsonKey(name: 'max_tokens') int? maxTokens,
            double? temperature,
            @JsonKey(name: 'top_p') double? topP,
            List<String>? stop,
            int? seed,
            bool? stream,
            @JsonKey(name: 'response_format')
            Map<String, dynamic>? responseFormat,
            List<Map<String, dynamic>>? tools,
            @JsonKey(name: 'tool_choice') dynamic toolChoice,
            @JsonKey(name: 'reasoning_split') bool? reasoningSplit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest():
        return $default(
            _that.messages,
            _that.model,
            _that.maxTokens,
            _that.temperature,
            _that.topP,
            _that.stop,
            _that.seed,
            _that.stream,
            _that.responseFormat,
            _that.tools,
            _that.toolChoice,
            _that.reasoningSplit);
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
            List<ChatCompletionMessage> messages,
            String model,
            @JsonKey(name: 'max_tokens') int? maxTokens,
            double? temperature,
            @JsonKey(name: 'top_p') double? topP,
            List<String>? stop,
            int? seed,
            bool? stream,
            @JsonKey(name: 'response_format')
            Map<String, dynamic>? responseFormat,
            List<Map<String, dynamic>>? tools,
            @JsonKey(name: 'tool_choice') dynamic toolChoice,
            @JsonKey(name: 'reasoning_split') bool? reasoningSplit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatCompletionRequest() when $default != null:
        return $default(
            _that.messages,
            _that.model,
            _that.maxTokens,
            _that.temperature,
            _that.topP,
            _that.stop,
            _that.seed,
            _that.stream,
            _that.responseFormat,
            _that.tools,
            _that.toolChoice,
            _that.reasoningSplit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionRequest extends ChatCompletionRequest {
  _ChatCompletionRequest(
      {required final List<ChatCompletionMessage> messages,
      required this.model,
      @JsonKey(name: 'max_tokens') this.maxTokens,
      this.temperature,
      @JsonKey(name: 'top_p') this.topP,
      final List<String>? stop,
      this.seed,
      this.stream,
      @JsonKey(name: 'response_format')
      final Map<String, dynamic>? responseFormat,
      final List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'tool_choice') this.toolChoice,
      @JsonKey(name: 'reasoning_split') this.reasoningSplit})
      : _messages = messages,
        _stop = stop,
        _responseFormat = responseFormat,
        _tools = tools,
        super._();
  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);

  final List<ChatCompletionMessage> _messages;
  @override
  List<ChatCompletionMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String model;
  @override
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  @override
  final double? temperature;
  @override
  @JsonKey(name: 'top_p')
  final double? topP;
  final List<String>? _stop;
  @override
  List<String>? get stop {
    final value = _stop;
    if (value == null) return null;
    if (_stop is EqualUnmodifiableListView) return _stop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? seed;
  @override
  final bool? stream;
  final Map<String, dynamic>? _responseFormat;
  @override
  @JsonKey(name: 'response_format')
  Map<String, dynamic>? get responseFormat {
    final value = _responseFormat;
    if (value == null) return null;
    if (_responseFormat is EqualUnmodifiableMapView) return _responseFormat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>>? _tools;
  @override
  List<Map<String, dynamic>>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'tool_choice')
  final dynamic toolChoice;

  /// DeepSeek-R1系と同様にThinkingプロセスを分離して取得する
  @override
  @JsonKey(name: 'reasoning_split')
  final bool? reasoningSplit;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionRequestCopyWith<_ChatCompletionRequest> get copyWith =>
      __$ChatCompletionRequestCopyWithImpl<_ChatCompletionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionRequest &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            const DeepCollectionEquality().equals(other._stop, _stop) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality()
                .equals(other._responseFormat, _responseFormat) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            const DeepCollectionEquality()
                .equals(other.toolChoice, toolChoice) &&
            (identical(other.reasoningSplit, reasoningSplit) ||
                other.reasoningSplit == reasoningSplit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      model,
      maxTokens,
      temperature,
      topP,
      const DeepCollectionEquality().hash(_stop),
      seed,
      stream,
      const DeepCollectionEquality().hash(_responseFormat),
      const DeepCollectionEquality().hash(_tools),
      const DeepCollectionEquality().hash(toolChoice),
      reasoningSplit);

  @override
  String toString() {
    return 'ChatCompletionRequest(messages: $messages, model: $model, maxTokens: $maxTokens, temperature: $temperature, topP: $topP, stop: $stop, seed: $seed, stream: $stream, responseFormat: $responseFormat, tools: $tools, toolChoice: $toolChoice, reasoningSplit: $reasoningSplit)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionRequestCopyWith<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$ChatCompletionRequestCopyWith(_ChatCompletionRequest value,
          $Res Function(_ChatCompletionRequest) _then) =
      __$ChatCompletionRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChatCompletionMessage> messages,
      String model,
      @JsonKey(name: 'max_tokens') int? maxTokens,
      double? temperature,
      @JsonKey(name: 'top_p') double? topP,
      List<String>? stop,
      int? seed,
      bool? stream,
      @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
      List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'tool_choice') dynamic toolChoice,
      @JsonKey(name: 'reasoning_split') bool? reasoningSplit});
}

/// @nodoc
class __$ChatCompletionRequestCopyWithImpl<$Res>
    implements _$ChatCompletionRequestCopyWith<$Res> {
  __$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final _ChatCompletionRequest _self;
  final $Res Function(_ChatCompletionRequest) _then;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messages = null,
    Object? model = null,
    Object? maxTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? stop = freezed,
    Object? seed = freezed,
    Object? stream = freezed,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = freezed,
    Object? reasoningSplit = freezed,
  }) {
    return _then(_ChatCompletionRequest(
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionMessage>,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      maxTokens: freezed == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      stop: freezed == stop
          ? _self._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseFormat: freezed == responseFormat
          ? _self._responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tools: freezed == tools
          ? _self._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      toolChoice: freezed == toolChoice
          ? _self.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reasoningSplit: freezed == reasoningSplit
          ? _self.reasoningSplit
          : reasoningSplit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
