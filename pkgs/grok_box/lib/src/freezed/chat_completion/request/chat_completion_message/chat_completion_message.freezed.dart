// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  @JsonKey(name: 'tool_calls')
  List<Map<String, dynamic>>? get toolCalls;

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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.toolCalls, toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, name,
      const DeepCollectionEquality().hash(toolCalls));

  @override
  String toString() {
    return 'ChatCompletionMessage(role: $role, content: $content, name: $name, toolCalls: $toolCalls)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionMessageCopyWith<$Res> {
  factory $ChatCompletionMessageCopyWith(ChatCompletionMessage value,
          $Res Function(ChatCompletionMessage) _then) =
      _$ChatCompletionMessageCopyWithImpl;
  @useResult
  $Res call(
      {ChatCompletionRole role,
      String content,
      String? name,
      @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls});
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
    Object? toolCalls = freezed,
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
      toolCalls: freezed == toolCalls
          ? _self.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionMessage extends ChatCompletionMessage {
  _ChatCompletionMessage(
      {required this.role,
      required this.content,
      this.name,
      @JsonKey(name: 'tool_calls') final List<Map<String, dynamic>>? toolCalls})
      : _toolCalls = toolCalls,
        super._();
  factory _ChatCompletionMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionMessageFromJson(json);

  @override
  final ChatCompletionRole role;
  @override
  final String content;
  @override
  final String? name;
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, name,
      const DeepCollectionEquality().hash(_toolCalls));

  @override
  String toString() {
    return 'ChatCompletionMessage(role: $role, content: $content, name: $name, toolCalls: $toolCalls)';
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
  $Res call(
      {ChatCompletionRole role,
      String content,
      String? name,
      @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls});
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
    Object? toolCalls = freezed,
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
      toolCalls: freezed == toolCalls
          ? _self._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

// dart format on
