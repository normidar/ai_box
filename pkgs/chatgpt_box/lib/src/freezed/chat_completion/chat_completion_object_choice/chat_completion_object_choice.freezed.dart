// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_object_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionObjectChoice {

 int get index;@JsonKey(name: 'finish_reason') String get finishReason; ChatCompletionObjectChoiceMessage get message;
/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectChoiceCopyWith<ChatCompletionObjectChoice> get copyWith => _$ChatCompletionObjectChoiceCopyWithImpl<ChatCompletionObjectChoice>(this as ChatCompletionObjectChoice, _$identity);

  /// Serializes this ChatCompletionObjectChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,finishReason,message);

@override
String toString() {
  return 'ChatCompletionObjectChoice(index: $index, finishReason: $finishReason, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectChoiceCopyWith<$Res>  {
  factory $ChatCompletionObjectChoiceCopyWith(ChatCompletionObjectChoice value, $Res Function(ChatCompletionObjectChoice) _then) = _$ChatCompletionObjectChoiceCopyWithImpl;
@useResult
$Res call({
 int index,@JsonKey(name: 'finish_reason') String finishReason, ChatCompletionObjectChoiceMessage message
});


$ChatCompletionObjectChoiceMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$ChatCompletionObjectChoiceCopyWithImpl<$Res>
    implements $ChatCompletionObjectChoiceCopyWith<$Res> {
  _$ChatCompletionObjectChoiceCopyWithImpl(this._self, this._then);

  final ChatCompletionObjectChoice _self;
  final $Res Function(ChatCompletionObjectChoice) _then;

/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? finishReason = null,Object? message = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,finishReason: null == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectChoiceMessage,
  ));
}
/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectChoiceMessageCopyWith<$Res> get message {
  
  return $ChatCompletionObjectChoiceMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectChoice extends ChatCompletionObjectChoice {
   _ChatCompletionObjectChoice({required this.index, @JsonKey(name: 'finish_reason') required this.finishReason, required this.message}): super._();
  factory _ChatCompletionObjectChoice.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectChoiceFromJson(json);

@override final  int index;
@override@JsonKey(name: 'finish_reason') final  String finishReason;
@override final  ChatCompletionObjectChoiceMessage message;

/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectChoiceCopyWith<_ChatCompletionObjectChoice> get copyWith => __$ChatCompletionObjectChoiceCopyWithImpl<_ChatCompletionObjectChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,finishReason,message);

@override
String toString() {
  return 'ChatCompletionObjectChoice(index: $index, finishReason: $finishReason, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectChoiceCopyWith<$Res> implements $ChatCompletionObjectChoiceCopyWith<$Res> {
  factory _$ChatCompletionObjectChoiceCopyWith(_ChatCompletionObjectChoice value, $Res Function(_ChatCompletionObjectChoice) _then) = __$ChatCompletionObjectChoiceCopyWithImpl;
@override @useResult
$Res call({
 int index,@JsonKey(name: 'finish_reason') String finishReason, ChatCompletionObjectChoiceMessage message
});


@override $ChatCompletionObjectChoiceMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$ChatCompletionObjectChoiceCopyWithImpl<$Res>
    implements _$ChatCompletionObjectChoiceCopyWith<$Res> {
  __$ChatCompletionObjectChoiceCopyWithImpl(this._self, this._then);

  final _ChatCompletionObjectChoice _self;
  final $Res Function(_ChatCompletionObjectChoice) _then;

/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? finishReason = null,Object? message = null,}) {
  return _then(_ChatCompletionObjectChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,finishReason: null == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectChoiceMessage,
  ));
}

/// Create a copy of ChatCompletionObjectChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectChoiceMessageCopyWith<$Res> get message {
  
  return $ChatCompletionObjectChoiceMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
