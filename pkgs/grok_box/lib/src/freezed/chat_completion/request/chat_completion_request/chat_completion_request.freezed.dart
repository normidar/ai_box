// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  bool? get deferred;
  @JsonKey(name: 'frequency_penalty')
  double? get frequencyPenalty;
  @JsonKey(name: 'logit_bias')
  Map<String, dynamic>? get logitBias;
  bool? get logprobs;
  @JsonKey(name: 'max_completion_tokens')
  int? get maxCompletionTokens;
  @JsonKey(name: 'max_tokens')
  int? get maxTokens;
  int? get n;
  @JsonKey(name: 'parallel_tool_calls')
  bool? get parallelToolCalls;
  @JsonKey(name: 'presence_penalty')
  double? get presencePenalty;
  @JsonKey(name: 'reasoning_effort')
  String? get reasoningEffort;
  @JsonKey(name: 'response_format')
  Map<String, dynamic>? get responseFormat;
  @JsonKey(name: 'search_parameters')
  Map<String, dynamic>? get searchParameters;
  int? get seed;
  List<String>? get stop;
  bool? get stream;
  @JsonKey(name: 'stream_options')
  Map<String, dynamic>? get streamOptions;
  double? get temperature;
  @JsonKey(name: 'tool_choice')
  dynamic get toolChoice;
  List<Map<String, dynamic>>? get tools;
  @JsonKey(name: 'top_logprobs')
  int? get topLogprobs;
  @JsonKey(name: 'top_p')
  double? get topP;
  String? get user;
  @JsonKey(name: 'web_search_options')
  Map<String, dynamic>? get webSearchOptions;

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
            (identical(other.deferred, deferred) ||
                other.deferred == deferred) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            const DeepCollectionEquality().equals(other.logitBias, logitBias) &&
            (identical(other.logprobs, logprobs) ||
                other.logprobs == logprobs) &&
            (identical(other.maxCompletionTokens, maxCompletionTokens) ||
                other.maxCompletionTokens == maxCompletionTokens) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.parallelToolCalls, parallelToolCalls) ||
                other.parallelToolCalls == parallelToolCalls) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.reasoningEffort, reasoningEffort) ||
                other.reasoningEffort == reasoningEffort) &&
            const DeepCollectionEquality()
                .equals(other.responseFormat, responseFormat) &&
            const DeepCollectionEquality()
                .equals(other.searchParameters, searchParameters) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            const DeepCollectionEquality().equals(other.stop, stop) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality()
                .equals(other.streamOptions, streamOptions) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality()
                .equals(other.toolChoice, toolChoice) &&
            const DeepCollectionEquality().equals(other.tools, tools) &&
            (identical(other.topLogprobs, topLogprobs) ||
                other.topLogprobs == topLogprobs) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.webSearchOptions, webSearchOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messages),
        model,
        deferred,
        frequencyPenalty,
        const DeepCollectionEquality().hash(logitBias),
        logprobs,
        maxCompletionTokens,
        maxTokens,
        n,
        parallelToolCalls,
        presencePenalty,
        reasoningEffort,
        const DeepCollectionEquality().hash(responseFormat),
        const DeepCollectionEquality().hash(searchParameters),
        seed,
        const DeepCollectionEquality().hash(stop),
        stream,
        const DeepCollectionEquality().hash(streamOptions),
        temperature,
        const DeepCollectionEquality().hash(toolChoice),
        const DeepCollectionEquality().hash(tools),
        topLogprobs,
        topP,
        user,
        const DeepCollectionEquality().hash(webSearchOptions)
      ]);

  @override
  String toString() {
    return 'ChatCompletionRequest(messages: $messages, model: $model, deferred: $deferred, frequencyPenalty: $frequencyPenalty, logitBias: $logitBias, logprobs: $logprobs, maxCompletionTokens: $maxCompletionTokens, maxTokens: $maxTokens, n: $n, parallelToolCalls: $parallelToolCalls, presencePenalty: $presencePenalty, reasoningEffort: $reasoningEffort, responseFormat: $responseFormat, searchParameters: $searchParameters, seed: $seed, stop: $stop, stream: $stream, streamOptions: $streamOptions, temperature: $temperature, toolChoice: $toolChoice, tools: $tools, topLogprobs: $topLogprobs, topP: $topP, user: $user, webSearchOptions: $webSearchOptions)';
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
      bool? deferred,
      @JsonKey(name: 'frequency_penalty') double? frequencyPenalty,
      @JsonKey(name: 'logit_bias') Map<String, dynamic>? logitBias,
      bool? logprobs,
      @JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens,
      @JsonKey(name: 'max_tokens') int? maxTokens,
      int? n,
      @JsonKey(name: 'parallel_tool_calls') bool? parallelToolCalls,
      @JsonKey(name: 'presence_penalty') double? presencePenalty,
      @JsonKey(name: 'reasoning_effort') String? reasoningEffort,
      @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
      @JsonKey(name: 'search_parameters')
      Map<String, dynamic>? searchParameters,
      int? seed,
      List<String>? stop,
      bool? stream,
      @JsonKey(name: 'stream_options') Map<String, dynamic>? streamOptions,
      double? temperature,
      @JsonKey(name: 'tool_choice') dynamic toolChoice,
      List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'top_logprobs') int? topLogprobs,
      @JsonKey(name: 'top_p') double? topP,
      String? user,
      @JsonKey(name: 'web_search_options')
      Map<String, dynamic>? webSearchOptions});
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
    Object? deferred = freezed,
    Object? frequencyPenalty = freezed,
    Object? logitBias = freezed,
    Object? logprobs = freezed,
    Object? maxCompletionTokens = freezed,
    Object? maxTokens = freezed,
    Object? n = freezed,
    Object? parallelToolCalls = freezed,
    Object? presencePenalty = freezed,
    Object? reasoningEffort = freezed,
    Object? responseFormat = freezed,
    Object? searchParameters = freezed,
    Object? seed = freezed,
    Object? stop = freezed,
    Object? stream = freezed,
    Object? streamOptions = freezed,
    Object? temperature = freezed,
    Object? toolChoice = freezed,
    Object? tools = freezed,
    Object? topLogprobs = freezed,
    Object? topP = freezed,
    Object? user = freezed,
    Object? webSearchOptions = freezed,
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
      deferred: freezed == deferred
          ? _self.deferred
          : deferred // ignore: cast_nullable_to_non_nullable
              as bool?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _self.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      logitBias: freezed == logitBias
          ? _self.logitBias
          : logitBias // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      logprobs: freezed == logprobs
          ? _self.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxCompletionTokens: freezed == maxCompletionTokens
          ? _self.maxCompletionTokens
          : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTokens: freezed == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      n: freezed == n
          ? _self.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      parallelToolCalls: freezed == parallelToolCalls
          ? _self.parallelToolCalls
          : parallelToolCalls // ignore: cast_nullable_to_non_nullable
              as bool?,
      presencePenalty: freezed == presencePenalty
          ? _self.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      reasoningEffort: freezed == reasoningEffort
          ? _self.reasoningEffort
          : reasoningEffort // ignore: cast_nullable_to_non_nullable
              as String?,
      responseFormat: freezed == responseFormat
          ? _self.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      searchParameters: freezed == searchParameters
          ? _self.searchParameters
          : searchParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stop: freezed == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      streamOptions: freezed == streamOptions
          ? _self.streamOptions
          : streamOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      toolChoice: freezed == toolChoice
          ? _self.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tools: freezed == tools
          ? _self.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      topLogprobs: freezed == topLogprobs
          ? _self.topLogprobs
          : topLogprobs // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      webSearchOptions: freezed == webSearchOptions
          ? _self.webSearchOptions
          : webSearchOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionRequest extends ChatCompletionRequest {
  _ChatCompletionRequest(
      {required final List<ChatCompletionMessage> messages,
      required this.model,
      this.deferred,
      @JsonKey(name: 'frequency_penalty') this.frequencyPenalty,
      @JsonKey(name: 'logit_bias') final Map<String, dynamic>? logitBias,
      this.logprobs,
      @JsonKey(name: 'max_completion_tokens') this.maxCompletionTokens,
      @JsonKey(name: 'max_tokens') this.maxTokens,
      this.n,
      @JsonKey(name: 'parallel_tool_calls') this.parallelToolCalls,
      @JsonKey(name: 'presence_penalty') this.presencePenalty,
      @JsonKey(name: 'reasoning_effort') this.reasoningEffort,
      @JsonKey(name: 'response_format')
      final Map<String, dynamic>? responseFormat,
      @JsonKey(name: 'search_parameters')
      final Map<String, dynamic>? searchParameters,
      this.seed,
      final List<String>? stop,
      this.stream,
      @JsonKey(name: 'stream_options')
      final Map<String, dynamic>? streamOptions,
      this.temperature,
      @JsonKey(name: 'tool_choice') this.toolChoice,
      final List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'top_logprobs') this.topLogprobs,
      @JsonKey(name: 'top_p') this.topP,
      this.user,
      @JsonKey(name: 'web_search_options')
      final Map<String, dynamic>? webSearchOptions})
      : _messages = messages,
        _logitBias = logitBias,
        _responseFormat = responseFormat,
        _searchParameters = searchParameters,
        _stop = stop,
        _streamOptions = streamOptions,
        _tools = tools,
        _webSearchOptions = webSearchOptions,
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
  final bool? deferred;
  @override
  @JsonKey(name: 'frequency_penalty')
  final double? frequencyPenalty;
  final Map<String, dynamic>? _logitBias;
  @override
  @JsonKey(name: 'logit_bias')
  Map<String, dynamic>? get logitBias {
    final value = _logitBias;
    if (value == null) return null;
    if (_logitBias is EqualUnmodifiableMapView) return _logitBias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? logprobs;
  @override
  @JsonKey(name: 'max_completion_tokens')
  final int? maxCompletionTokens;
  @override
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  @override
  final int? n;
  @override
  @JsonKey(name: 'parallel_tool_calls')
  final bool? parallelToolCalls;
  @override
  @JsonKey(name: 'presence_penalty')
  final double? presencePenalty;
  @override
  @JsonKey(name: 'reasoning_effort')
  final String? reasoningEffort;
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

  final Map<String, dynamic>? _searchParameters;
  @override
  @JsonKey(name: 'search_parameters')
  Map<String, dynamic>? get searchParameters {
    final value = _searchParameters;
    if (value == null) return null;
    if (_searchParameters is EqualUnmodifiableMapView) return _searchParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? seed;
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
  final bool? stream;
  final Map<String, dynamic>? _streamOptions;
  @override
  @JsonKey(name: 'stream_options')
  Map<String, dynamic>? get streamOptions {
    final value = _streamOptions;
    if (value == null) return null;
    if (_streamOptions is EqualUnmodifiableMapView) return _streamOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? temperature;
  @override
  @JsonKey(name: 'tool_choice')
  final dynamic toolChoice;
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
  @JsonKey(name: 'top_logprobs')
  final int? topLogprobs;
  @override
  @JsonKey(name: 'top_p')
  final double? topP;
  @override
  final String? user;
  final Map<String, dynamic>? _webSearchOptions;
  @override
  @JsonKey(name: 'web_search_options')
  Map<String, dynamic>? get webSearchOptions {
    final value = _webSearchOptions;
    if (value == null) return null;
    if (_webSearchOptions is EqualUnmodifiableMapView) return _webSearchOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
            (identical(other.deferred, deferred) ||
                other.deferred == deferred) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            const DeepCollectionEquality()
                .equals(other._logitBias, _logitBias) &&
            (identical(other.logprobs, logprobs) ||
                other.logprobs == logprobs) &&
            (identical(other.maxCompletionTokens, maxCompletionTokens) ||
                other.maxCompletionTokens == maxCompletionTokens) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.parallelToolCalls, parallelToolCalls) ||
                other.parallelToolCalls == parallelToolCalls) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.reasoningEffort, reasoningEffort) ||
                other.reasoningEffort == reasoningEffort) &&
            const DeepCollectionEquality()
                .equals(other._responseFormat, _responseFormat) &&
            const DeepCollectionEquality()
                .equals(other._searchParameters, _searchParameters) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            const DeepCollectionEquality().equals(other._stop, _stop) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality()
                .equals(other._streamOptions, _streamOptions) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality()
                .equals(other.toolChoice, toolChoice) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.topLogprobs, topLogprobs) ||
                other.topLogprobs == topLogprobs) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._webSearchOptions, _webSearchOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_messages),
        model,
        deferred,
        frequencyPenalty,
        const DeepCollectionEquality().hash(_logitBias),
        logprobs,
        maxCompletionTokens,
        maxTokens,
        n,
        parallelToolCalls,
        presencePenalty,
        reasoningEffort,
        const DeepCollectionEquality().hash(_responseFormat),
        const DeepCollectionEquality().hash(_searchParameters),
        seed,
        const DeepCollectionEquality().hash(_stop),
        stream,
        const DeepCollectionEquality().hash(_streamOptions),
        temperature,
        const DeepCollectionEquality().hash(toolChoice),
        const DeepCollectionEquality().hash(_tools),
        topLogprobs,
        topP,
        user,
        const DeepCollectionEquality().hash(_webSearchOptions)
      ]);

  @override
  String toString() {
    return 'ChatCompletionRequest(messages: $messages, model: $model, deferred: $deferred, frequencyPenalty: $frequencyPenalty, logitBias: $logitBias, logprobs: $logprobs, maxCompletionTokens: $maxCompletionTokens, maxTokens: $maxTokens, n: $n, parallelToolCalls: $parallelToolCalls, presencePenalty: $presencePenalty, reasoningEffort: $reasoningEffort, responseFormat: $responseFormat, searchParameters: $searchParameters, seed: $seed, stop: $stop, stream: $stream, streamOptions: $streamOptions, temperature: $temperature, toolChoice: $toolChoice, tools: $tools, topLogprobs: $topLogprobs, topP: $topP, user: $user, webSearchOptions: $webSearchOptions)';
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
      bool? deferred,
      @JsonKey(name: 'frequency_penalty') double? frequencyPenalty,
      @JsonKey(name: 'logit_bias') Map<String, dynamic>? logitBias,
      bool? logprobs,
      @JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens,
      @JsonKey(name: 'max_tokens') int? maxTokens,
      int? n,
      @JsonKey(name: 'parallel_tool_calls') bool? parallelToolCalls,
      @JsonKey(name: 'presence_penalty') double? presencePenalty,
      @JsonKey(name: 'reasoning_effort') String? reasoningEffort,
      @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
      @JsonKey(name: 'search_parameters')
      Map<String, dynamic>? searchParameters,
      int? seed,
      List<String>? stop,
      bool? stream,
      @JsonKey(name: 'stream_options') Map<String, dynamic>? streamOptions,
      double? temperature,
      @JsonKey(name: 'tool_choice') dynamic toolChoice,
      List<Map<String, dynamic>>? tools,
      @JsonKey(name: 'top_logprobs') int? topLogprobs,
      @JsonKey(name: 'top_p') double? topP,
      String? user,
      @JsonKey(name: 'web_search_options')
      Map<String, dynamic>? webSearchOptions});
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
    Object? deferred = freezed,
    Object? frequencyPenalty = freezed,
    Object? logitBias = freezed,
    Object? logprobs = freezed,
    Object? maxCompletionTokens = freezed,
    Object? maxTokens = freezed,
    Object? n = freezed,
    Object? parallelToolCalls = freezed,
    Object? presencePenalty = freezed,
    Object? reasoningEffort = freezed,
    Object? responseFormat = freezed,
    Object? searchParameters = freezed,
    Object? seed = freezed,
    Object? stop = freezed,
    Object? stream = freezed,
    Object? streamOptions = freezed,
    Object? temperature = freezed,
    Object? toolChoice = freezed,
    Object? tools = freezed,
    Object? topLogprobs = freezed,
    Object? topP = freezed,
    Object? user = freezed,
    Object? webSearchOptions = freezed,
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
      deferred: freezed == deferred
          ? _self.deferred
          : deferred // ignore: cast_nullable_to_non_nullable
              as bool?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _self.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      logitBias: freezed == logitBias
          ? _self._logitBias
          : logitBias // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      logprobs: freezed == logprobs
          ? _self.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxCompletionTokens: freezed == maxCompletionTokens
          ? _self.maxCompletionTokens
          : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTokens: freezed == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      n: freezed == n
          ? _self.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      parallelToolCalls: freezed == parallelToolCalls
          ? _self.parallelToolCalls
          : parallelToolCalls // ignore: cast_nullable_to_non_nullable
              as bool?,
      presencePenalty: freezed == presencePenalty
          ? _self.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      reasoningEffort: freezed == reasoningEffort
          ? _self.reasoningEffort
          : reasoningEffort // ignore: cast_nullable_to_non_nullable
              as String?,
      responseFormat: freezed == responseFormat
          ? _self._responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      searchParameters: freezed == searchParameters
          ? _self._searchParameters
          : searchParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stop: freezed == stop
          ? _self._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      streamOptions: freezed == streamOptions
          ? _self._streamOptions
          : streamOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      toolChoice: freezed == toolChoice
          ? _self.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tools: freezed == tools
          ? _self._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      topLogprobs: freezed == topLogprobs
          ? _self.topLogprobs
          : topLogprobs // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      webSearchOptions: freezed == webSearchOptions
          ? _self._webSearchOptions
          : webSearchOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
