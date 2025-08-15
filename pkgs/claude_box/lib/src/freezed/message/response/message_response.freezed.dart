// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageResponse {
  String get id;
  String get type;
  String get role;
  List<MessageResponseContent> get content;
  String get model;
  @JsonKey(name: 'stop_reason')
  String get stopReason;
  MessageUsage get usage;
  @JsonKey(name: 'stop_sequence')
  String? get stopSequence;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageResponseCopyWith<MessageResponse> get copyWith =>
      _$MessageResponseCopyWithImpl<MessageResponse>(
          this as MessageResponse, _$identity);

  /// Serializes this MessageResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.stopReason, stopReason) ||
                other.stopReason == stopReason) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.stopSequence, stopSequence) ||
                other.stopSequence == stopSequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      role,
      const DeepCollectionEquality().hash(content),
      model,
      stopReason,
      usage,
      stopSequence);

  @override
  String toString() {
    return 'MessageResponse(id: $id, type: $type, role: $role, content: $content, model: $model, stopReason: $stopReason, usage: $usage, stopSequence: $stopSequence)';
  }
}

/// @nodoc
abstract mixin class $MessageResponseCopyWith<$Res> {
  factory $MessageResponseCopyWith(
          MessageResponse value, $Res Function(MessageResponse) _then) =
      _$MessageResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String type,
      String role,
      List<MessageResponseContent> content,
      String model,
      @JsonKey(name: 'stop_reason') String stopReason,
      MessageUsage usage,
      @JsonKey(name: 'stop_sequence') String? stopSequence});

  $MessageUsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$MessageResponseCopyWithImpl<$Res>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._self, this._then);

  final MessageResponse _self;
  final $Res Function(MessageResponse) _then;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? role = null,
    Object? content = null,
    Object? model = null,
    Object? stopReason = null,
    Object? usage = null,
    Object? stopSequence = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<MessageResponseContent>,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      stopReason: null == stopReason
          ? _self.stopReason
          : stopReason // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as MessageUsage,
      stopSequence: freezed == stopSequence
          ? _self.stopSequence
          : stopSequence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageUsageCopyWith<$Res> get usage {
    return $MessageUsageCopyWith<$Res>(_self.usage, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MessageResponse extends MessageResponse {
  _MessageResponse(
      {required this.id,
      required this.type,
      required this.role,
      required final List<MessageResponseContent> content,
      required this.model,
      @JsonKey(name: 'stop_reason') required this.stopReason,
      required this.usage,
      @JsonKey(name: 'stop_sequence') this.stopSequence})
      : _content = content,
        super._();
  factory _MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String role;
  final List<MessageResponseContent> _content;
  @override
  List<MessageResponseContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final String model;
  @override
  @JsonKey(name: 'stop_reason')
  final String stopReason;
  @override
  final MessageUsage usage;
  @override
  @JsonKey(name: 'stop_sequence')
  final String? stopSequence;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageResponseCopyWith<_MessageResponse> get copyWith =>
      __$MessageResponseCopyWithImpl<_MessageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.stopReason, stopReason) ||
                other.stopReason == stopReason) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.stopSequence, stopSequence) ||
                other.stopSequence == stopSequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      role,
      const DeepCollectionEquality().hash(_content),
      model,
      stopReason,
      usage,
      stopSequence);

  @override
  String toString() {
    return 'MessageResponse(id: $id, type: $type, role: $role, content: $content, model: $model, stopReason: $stopReason, usage: $usage, stopSequence: $stopSequence)';
  }
}

/// @nodoc
abstract mixin class _$MessageResponseCopyWith<$Res>
    implements $MessageResponseCopyWith<$Res> {
  factory _$MessageResponseCopyWith(
          _MessageResponse value, $Res Function(_MessageResponse) _then) =
      __$MessageResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String role,
      List<MessageResponseContent> content,
      String model,
      @JsonKey(name: 'stop_reason') String stopReason,
      MessageUsage usage,
      @JsonKey(name: 'stop_sequence') String? stopSequence});

  @override
  $MessageUsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$MessageResponseCopyWithImpl<$Res>
    implements _$MessageResponseCopyWith<$Res> {
  __$MessageResponseCopyWithImpl(this._self, this._then);

  final _MessageResponse _self;
  final $Res Function(_MessageResponse) _then;

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? role = null,
    Object? content = null,
    Object? model = null,
    Object? stopReason = null,
    Object? usage = null,
    Object? stopSequence = freezed,
  }) {
    return _then(_MessageResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<MessageResponseContent>,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      stopReason: null == stopReason
          ? _self.stopReason
          : stopReason // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as MessageUsage,
      stopSequence: freezed == stopSequence
          ? _self.stopSequence
          : stopSequence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageUsageCopyWith<$Res> get usage {
    return $MessageUsageCopyWith<$Res>(_self.usage, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

/// @nodoc
mixin _$MessageResponseContent {
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'text')
  String get text;

  /// Create a copy of MessageResponseContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageResponseContentCopyWith<MessageResponseContent> get copyWith =>
      _$MessageResponseContentCopyWithImpl<MessageResponseContent>(
          this as MessageResponseContent, _$identity);

  /// Serializes this MessageResponseContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageResponseContent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  @override
  String toString() {
    return 'MessageResponseContent(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $MessageResponseContentCopyWith<$Res> {
  factory $MessageResponseContentCopyWith(MessageResponseContent value,
          $Res Function(MessageResponseContent) _then) =
      _$MessageResponseContentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type, @JsonKey(name: 'text') String text});
}

/// @nodoc
class _$MessageResponseContentCopyWithImpl<$Res>
    implements $MessageResponseContentCopyWith<$Res> {
  _$MessageResponseContentCopyWithImpl(this._self, this._then);

  final MessageResponseContent _self;
  final $Res Function(MessageResponseContent) _then;

  /// Create a copy of MessageResponseContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageResponseContent extends MessageResponseContent {
  _MessageResponseContent(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'text') required this.text})
      : super._();
  factory _MessageResponseContent.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseContentFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Create a copy of MessageResponseContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageResponseContentCopyWith<_MessageResponseContent> get copyWith =>
      __$MessageResponseContentCopyWithImpl<_MessageResponseContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageResponseContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageResponseContent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  @override
  String toString() {
    return 'MessageResponseContent(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class _$MessageResponseContentCopyWith<$Res>
    implements $MessageResponseContentCopyWith<$Res> {
  factory _$MessageResponseContentCopyWith(_MessageResponseContent value,
          $Res Function(_MessageResponseContent) _then) =
      __$MessageResponseContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type, @JsonKey(name: 'text') String text});
}

/// @nodoc
class __$MessageResponseContentCopyWithImpl<$Res>
    implements _$MessageResponseContentCopyWith<$Res> {
  __$MessageResponseContentCopyWithImpl(this._self, this._then);

  final _MessageResponseContent _self;
  final $Res Function(_MessageResponseContent) _then;

  /// Create a copy of MessageResponseContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_MessageResponseContent(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MessageUsage {
  @JsonKey(name: 'input_tokens')
  int get inputTokens;
  @JsonKey(name: 'output_tokens')
  int get outputTokens;

  /// Create a copy of MessageUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageUsageCopyWith<MessageUsage> get copyWith =>
      _$MessageUsageCopyWithImpl<MessageUsage>(
          this as MessageUsage, _$identity);

  /// Serializes this MessageUsage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageUsage &&
            (identical(other.inputTokens, inputTokens) ||
                other.inputTokens == inputTokens) &&
            (identical(other.outputTokens, outputTokens) ||
                other.outputTokens == outputTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inputTokens, outputTokens);

  @override
  String toString() {
    return 'MessageUsage(inputTokens: $inputTokens, outputTokens: $outputTokens)';
  }
}

/// @nodoc
abstract mixin class $MessageUsageCopyWith<$Res> {
  factory $MessageUsageCopyWith(
          MessageUsage value, $Res Function(MessageUsage) _then) =
      _$MessageUsageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'input_tokens') int inputTokens,
      @JsonKey(name: 'output_tokens') int outputTokens});
}

/// @nodoc
class _$MessageUsageCopyWithImpl<$Res> implements $MessageUsageCopyWith<$Res> {
  _$MessageUsageCopyWithImpl(this._self, this._then);

  final MessageUsage _self;
  final $Res Function(MessageUsage) _then;

  /// Create a copy of MessageUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputTokens = null,
    Object? outputTokens = null,
  }) {
    return _then(_self.copyWith(
      inputTokens: null == inputTokens
          ? _self.inputTokens
          : inputTokens // ignore: cast_nullable_to_non_nullable
              as int,
      outputTokens: null == outputTokens
          ? _self.outputTokens
          : outputTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageUsage extends MessageUsage {
  _MessageUsage(
      {@JsonKey(name: 'input_tokens') required this.inputTokens,
      @JsonKey(name: 'output_tokens') required this.outputTokens})
      : super._();
  factory _MessageUsage.fromJson(Map<String, dynamic> json) =>
      _$MessageUsageFromJson(json);

  @override
  @JsonKey(name: 'input_tokens')
  final int inputTokens;
  @override
  @JsonKey(name: 'output_tokens')
  final int outputTokens;

  /// Create a copy of MessageUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageUsageCopyWith<_MessageUsage> get copyWith =>
      __$MessageUsageCopyWithImpl<_MessageUsage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageUsageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageUsage &&
            (identical(other.inputTokens, inputTokens) ||
                other.inputTokens == inputTokens) &&
            (identical(other.outputTokens, outputTokens) ||
                other.outputTokens == outputTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inputTokens, outputTokens);

  @override
  String toString() {
    return 'MessageUsage(inputTokens: $inputTokens, outputTokens: $outputTokens)';
  }
}

/// @nodoc
abstract mixin class _$MessageUsageCopyWith<$Res>
    implements $MessageUsageCopyWith<$Res> {
  factory _$MessageUsageCopyWith(
          _MessageUsage value, $Res Function(_MessageUsage) _then) =
      __$MessageUsageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'input_tokens') int inputTokens,
      @JsonKey(name: 'output_tokens') int outputTokens});
}

/// @nodoc
class __$MessageUsageCopyWithImpl<$Res>
    implements _$MessageUsageCopyWith<$Res> {
  __$MessageUsageCopyWithImpl(this._self, this._then);

  final _MessageUsage _self;
  final $Res Function(_MessageUsage) _then;

  /// Create a copy of MessageUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inputTokens = null,
    Object? outputTokens = null,
  }) {
    return _then(_MessageUsage(
      inputTokens: null == inputTokens
          ? _self.inputTokens
          : inputTokens // ignore: cast_nullable_to_non_nullable
              as int,
      outputTokens: null == outputTokens
          ? _self.outputTokens
          : outputTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
