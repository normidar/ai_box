// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageContent {
  @JsonKey(name: 'role')
  String get role;
  @JsonKey(name: 'content')
  dynamic get content;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageContentCopyWith<MessageContent> get copyWith =>
      _$MessageContentCopyWithImpl<MessageContent>(
          this as MessageContent, _$identity);

  /// Serializes this MessageContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageContent &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, const DeepCollectionEquality().hash(content));

  @override
  String toString() {
    return 'MessageContent(role: $role, content: $content)';
  }
}

/// @nodoc
abstract mixin class $MessageContentCopyWith<$Res> {
  factory $MessageContentCopyWith(
          MessageContent value, $Res Function(MessageContent) _then) =
      _$MessageContentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String role,
      @JsonKey(name: 'content') dynamic content});
}

/// @nodoc
class _$MessageContentCopyWithImpl<$Res>
    implements $MessageContentCopyWith<$Res> {
  _$MessageContentCopyWithImpl(this._self, this._then);

  final MessageContent _self;
  final $Res Function(MessageContent) _then;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = freezed,
  }) {
    return _then(_self.copyWith(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageContent extends MessageContent {
  _MessageContent(
      {@JsonKey(name: 'role') required this.role,
      @JsonKey(name: 'content') required this.content})
      : super._();
  factory _MessageContent.fromJson(Map<String, dynamic> json) =>
      _$MessageContentFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String role;
  @override
  @JsonKey(name: 'content')
  final dynamic content;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageContentCopyWith<_MessageContent> get copyWith =>
      __$MessageContentCopyWithImpl<_MessageContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageContent &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, const DeepCollectionEquality().hash(content));

  @override
  String toString() {
    return 'MessageContent(role: $role, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$MessageContentCopyWith<$Res>
    implements $MessageContentCopyWith<$Res> {
  factory _$MessageContentCopyWith(
          _MessageContent value, $Res Function(_MessageContent) _then) =
      __$MessageContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String role,
      @JsonKey(name: 'content') dynamic content});
}

/// @nodoc
class __$MessageContentCopyWithImpl<$Res>
    implements _$MessageContentCopyWith<$Res> {
  __$MessageContentCopyWithImpl(this._self, this._then);

  final _MessageContent _self;
  final $Res Function(_MessageContent) _then;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = null,
    Object? content = freezed,
  }) {
    return _then(_MessageContent(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$MessageRequest {
  String get model;
  List<MessageContent> get messages;
  @JsonKey(name: 'max_tokens')
  int get maxTokens;
  @JsonKey(includeIfNull: false)
  String? get system;
  @JsonKey(includeIfNull: false)
  double? get temperature;
  @JsonKey(name: 'top_p', includeIfNull: false)
  double? get topP;
  @JsonKey(name: 'top_k', includeIfNull: false)
  int? get topK;
  @JsonKey(name: 'stop_sequences', includeIfNull: false)
  List<String>? get stopSequences;
  @JsonKey(includeIfNull: false)
  bool? get stream;

  /// Create a copy of MessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageRequestCopyWith<MessageRequest> get copyWith =>
      _$MessageRequestCopyWithImpl<MessageRequest>(
          this as MessageRequest, _$identity);

  /// Serializes this MessageRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageRequest &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            const DeepCollectionEquality()
                .equals(other.stopSequences, stopSequences) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(messages),
      maxTokens,
      system,
      temperature,
      topP,
      topK,
      const DeepCollectionEquality().hash(stopSequences),
      stream);

  @override
  String toString() {
    return 'MessageRequest(model: $model, messages: $messages, maxTokens: $maxTokens, system: $system, temperature: $temperature, topP: $topP, topK: $topK, stopSequences: $stopSequences, stream: $stream)';
  }
}

/// @nodoc
abstract mixin class $MessageRequestCopyWith<$Res> {
  factory $MessageRequestCopyWith(
          MessageRequest value, $Res Function(MessageRequest) _then) =
      _$MessageRequestCopyWithImpl;
  @useResult
  $Res call(
      {String model,
      List<MessageContent> messages,
      @JsonKey(name: 'max_tokens') int maxTokens,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) double? temperature,
      @JsonKey(name: 'top_p', includeIfNull: false) double? topP,
      @JsonKey(name: 'top_k', includeIfNull: false) int? topK,
      @JsonKey(name: 'stop_sequences', includeIfNull: false)
      List<String>? stopSequences,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class _$MessageRequestCopyWithImpl<$Res>
    implements $MessageRequestCopyWith<$Res> {
  _$MessageRequestCopyWithImpl(this._self, this._then);

  final MessageRequest _self;
  final $Res Function(MessageRequest) _then;

  /// Create a copy of MessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? maxTokens = null,
    Object? system = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
    Object? stopSequences = freezed,
    Object? stream = freezed,
  }) {
    return _then(_self.copyWith(
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageContent>,
      maxTokens: null == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      system: freezed == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      topK: freezed == topK
          ? _self.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      stopSequences: freezed == stopSequences
          ? _self.stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageRequest extends MessageRequest {
  _MessageRequest(
      {required this.model,
      required final List<MessageContent> messages,
      @JsonKey(name: 'max_tokens') required this.maxTokens,
      @JsonKey(includeIfNull: false) this.system,
      @JsonKey(includeIfNull: false) this.temperature,
      @JsonKey(name: 'top_p', includeIfNull: false) this.topP,
      @JsonKey(name: 'top_k', includeIfNull: false) this.topK,
      @JsonKey(name: 'stop_sequences', includeIfNull: false)
      final List<String>? stopSequences,
      @JsonKey(includeIfNull: false) this.stream})
      : _messages = messages,
        _stopSequences = stopSequences,
        super._();
  factory _MessageRequest.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestFromJson(json);

  @override
  final String model;
  final List<MessageContent> _messages;
  @override
  List<MessageContent> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey(name: 'max_tokens')
  final int maxTokens;
  @override
  @JsonKey(includeIfNull: false)
  final String? system;
  @override
  @JsonKey(includeIfNull: false)
  final double? temperature;
  @override
  @JsonKey(name: 'top_p', includeIfNull: false)
  final double? topP;
  @override
  @JsonKey(name: 'top_k', includeIfNull: false)
  final int? topK;
  final List<String>? _stopSequences;
  @override
  @JsonKey(name: 'stop_sequences', includeIfNull: false)
  List<String>? get stopSequences {
    final value = _stopSequences;
    if (value == null) return null;
    if (_stopSequences is EqualUnmodifiableListView) return _stopSequences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final bool? stream;

  /// Create a copy of MessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageRequestCopyWith<_MessageRequest> get copyWith =>
      __$MessageRequestCopyWithImpl<_MessageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageRequest &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            const DeepCollectionEquality()
                .equals(other._stopSequences, _stopSequences) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(_messages),
      maxTokens,
      system,
      temperature,
      topP,
      topK,
      const DeepCollectionEquality().hash(_stopSequences),
      stream);

  @override
  String toString() {
    return 'MessageRequest(model: $model, messages: $messages, maxTokens: $maxTokens, system: $system, temperature: $temperature, topP: $topP, topK: $topK, stopSequences: $stopSequences, stream: $stream)';
  }
}

/// @nodoc
abstract mixin class _$MessageRequestCopyWith<$Res>
    implements $MessageRequestCopyWith<$Res> {
  factory _$MessageRequestCopyWith(
          _MessageRequest value, $Res Function(_MessageRequest) _then) =
      __$MessageRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String model,
      List<MessageContent> messages,
      @JsonKey(name: 'max_tokens') int maxTokens,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) double? temperature,
      @JsonKey(name: 'top_p', includeIfNull: false) double? topP,
      @JsonKey(name: 'top_k', includeIfNull: false) int? topK,
      @JsonKey(name: 'stop_sequences', includeIfNull: false)
      List<String>? stopSequences,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class __$MessageRequestCopyWithImpl<$Res>
    implements _$MessageRequestCopyWith<$Res> {
  __$MessageRequestCopyWithImpl(this._self, this._then);

  final _MessageRequest _self;
  final $Res Function(_MessageRequest) _then;

  /// Create a copy of MessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? maxTokens = null,
    Object? system = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
    Object? stopSequences = freezed,
    Object? stream = freezed,
  }) {
    return _then(_MessageRequest(
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageContent>,
      maxTokens: null == maxTokens
          ? _self.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      system: freezed == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _self.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      topK: freezed == topK
          ? _self.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      stopSequences: freezed == stopSequences
          ? _self._stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
