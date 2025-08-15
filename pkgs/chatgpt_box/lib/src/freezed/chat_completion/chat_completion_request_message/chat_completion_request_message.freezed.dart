// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_request_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionRequestMessage {

 String get role; String get content; String? get name; String? get refusal;@JsonKey(name: 'tool_call_id') String? get toolCallId;
/// Create a copy of ChatCompletionRequestMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionRequestMessageCopyWith<ChatCompletionRequestMessage> get copyWith => _$ChatCompletionRequestMessageCopyWithImpl<ChatCompletionRequestMessage>(this as ChatCompletionRequestMessage, _$identity);

  /// Serializes this ChatCompletionRequestMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionRequestMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.name, name) || other.name == name)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&(identical(other.toolCallId, toolCallId) || other.toolCallId == toolCallId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,name,refusal,toolCallId);

@override
String toString() {
  return 'ChatCompletionRequestMessage(role: $role, content: $content, name: $name, refusal: $refusal, toolCallId: $toolCallId)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionRequestMessageCopyWith<$Res>  {
  factory $ChatCompletionRequestMessageCopyWith(ChatCompletionRequestMessage value, $Res Function(ChatCompletionRequestMessage) _then) = _$ChatCompletionRequestMessageCopyWithImpl;
@useResult
$Res call({
 String role, String content, String? name, String? refusal,@JsonKey(name: 'tool_call_id') String? toolCallId
});




}
/// @nodoc
class _$ChatCompletionRequestMessageCopyWithImpl<$Res>
    implements $ChatCompletionRequestMessageCopyWith<$Res> {
  _$ChatCompletionRequestMessageCopyWithImpl(this._self, this._then);

  final ChatCompletionRequestMessage _self;
  final $Res Function(ChatCompletionRequestMessage) _then;

/// Create a copy of ChatCompletionRequestMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,Object? name = freezed,Object? refusal = freezed,Object? toolCallId = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,toolCallId: freezed == toolCallId ? _self.toolCallId : toolCallId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatCompletionRequestMessage extends ChatCompletionRequestMessage {
   _ChatCompletionRequestMessage({required this.role, required this.content, this.name, this.refusal, @JsonKey(name: 'tool_call_id') this.toolCallId}): super._();
  factory _ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) => _$ChatCompletionRequestMessageFromJson(json);

@override final  String role;
@override final  String content;
@override final  String? name;
@override final  String? refusal;
@override@JsonKey(name: 'tool_call_id') final  String? toolCallId;

/// Create a copy of ChatCompletionRequestMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionRequestMessageCopyWith<_ChatCompletionRequestMessage> get copyWith => __$ChatCompletionRequestMessageCopyWithImpl<_ChatCompletionRequestMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionRequestMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionRequestMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.name, name) || other.name == name)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&(identical(other.toolCallId, toolCallId) || other.toolCallId == toolCallId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,name,refusal,toolCallId);

@override
String toString() {
  return 'ChatCompletionRequestMessage(role: $role, content: $content, name: $name, refusal: $refusal, toolCallId: $toolCallId)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionRequestMessageCopyWith<$Res> implements $ChatCompletionRequestMessageCopyWith<$Res> {
  factory _$ChatCompletionRequestMessageCopyWith(_ChatCompletionRequestMessage value, $Res Function(_ChatCompletionRequestMessage) _then) = __$ChatCompletionRequestMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, String content, String? name, String? refusal,@JsonKey(name: 'tool_call_id') String? toolCallId
});




}
/// @nodoc
class __$ChatCompletionRequestMessageCopyWithImpl<$Res>
    implements _$ChatCompletionRequestMessageCopyWith<$Res> {
  __$ChatCompletionRequestMessageCopyWithImpl(this._self, this._then);

  final _ChatCompletionRequestMessage _self;
  final $Res Function(_ChatCompletionRequestMessage) _then;

/// Create a copy of ChatCompletionRequestMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,Object? name = freezed,Object? refusal = freezed,Object? toolCallId = freezed,}) {
  return _then(_ChatCompletionRequestMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,toolCallId: freezed == toolCallId ? _self.toolCallId : toolCallId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
