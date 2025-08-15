// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_object_choice_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionObjectChoiceMessage {

 String get role; String? get content; String? get refusal;
/// Create a copy of ChatCompletionObjectChoiceMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectChoiceMessageCopyWith<ChatCompletionObjectChoiceMessage> get copyWith => _$ChatCompletionObjectChoiceMessageCopyWithImpl<ChatCompletionObjectChoiceMessage>(this as ChatCompletionObjectChoiceMessage, _$identity);

  /// Serializes this ChatCompletionObjectChoiceMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectChoiceMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.refusal, refusal) || other.refusal == refusal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,refusal);

@override
String toString() {
  return 'ChatCompletionObjectChoiceMessage(role: $role, content: $content, refusal: $refusal)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectChoiceMessageCopyWith<$Res>  {
  factory $ChatCompletionObjectChoiceMessageCopyWith(ChatCompletionObjectChoiceMessage value, $Res Function(ChatCompletionObjectChoiceMessage) _then) = _$ChatCompletionObjectChoiceMessageCopyWithImpl;
@useResult
$Res call({
 String role, String? content, String? refusal
});




}
/// @nodoc
class _$ChatCompletionObjectChoiceMessageCopyWithImpl<$Res>
    implements $ChatCompletionObjectChoiceMessageCopyWith<$Res> {
  _$ChatCompletionObjectChoiceMessageCopyWithImpl(this._self, this._then);

  final ChatCompletionObjectChoiceMessage _self;
  final $Res Function(ChatCompletionObjectChoiceMessage) _then;

/// Create a copy of ChatCompletionObjectChoiceMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = freezed,Object? refusal = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectChoiceMessage extends ChatCompletionObjectChoiceMessage {
   _ChatCompletionObjectChoiceMessage({required this.role, this.content, this.refusal}): super._();
  factory _ChatCompletionObjectChoiceMessage.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectChoiceMessageFromJson(json);

@override final  String role;
@override final  String? content;
@override final  String? refusal;

/// Create a copy of ChatCompletionObjectChoiceMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectChoiceMessageCopyWith<_ChatCompletionObjectChoiceMessage> get copyWith => __$ChatCompletionObjectChoiceMessageCopyWithImpl<_ChatCompletionObjectChoiceMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectChoiceMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectChoiceMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.refusal, refusal) || other.refusal == refusal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,refusal);

@override
String toString() {
  return 'ChatCompletionObjectChoiceMessage(role: $role, content: $content, refusal: $refusal)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectChoiceMessageCopyWith<$Res> implements $ChatCompletionObjectChoiceMessageCopyWith<$Res> {
  factory _$ChatCompletionObjectChoiceMessageCopyWith(_ChatCompletionObjectChoiceMessage value, $Res Function(_ChatCompletionObjectChoiceMessage) _then) = __$ChatCompletionObjectChoiceMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, String? content, String? refusal
});




}
/// @nodoc
class __$ChatCompletionObjectChoiceMessageCopyWithImpl<$Res>
    implements _$ChatCompletionObjectChoiceMessageCopyWith<$Res> {
  __$ChatCompletionObjectChoiceMessageCopyWithImpl(this._self, this._then);

  final _ChatCompletionObjectChoiceMessage _self;
  final $Res Function(_ChatCompletionObjectChoiceMessage) _then;

/// Create a copy of ChatCompletionObjectChoiceMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = freezed,Object? refusal = freezed,}) {
  return _then(_ChatCompletionObjectChoiceMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
