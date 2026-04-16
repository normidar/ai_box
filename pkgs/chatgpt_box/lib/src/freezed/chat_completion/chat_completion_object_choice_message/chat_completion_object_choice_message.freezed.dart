// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String get role;/// テキストのみの場合は String、マルチモーダルの場合は `List<dynamic>`。
 dynamic get content; String? get refusal;/// ツール呼び出しリスト。finish_reason が tool_calls のとき設定される。
@JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? get toolCalls;/// 音声レスポンス（gpt-4o-audio 系モデルのみ）。
 Map<String, dynamic>? get audio;
/// Create a copy of ChatCompletionObjectChoiceMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectChoiceMessageCopyWith<ChatCompletionObjectChoiceMessage> get copyWith => _$ChatCompletionObjectChoiceMessageCopyWithImpl<ChatCompletionObjectChoiceMessage>(this as ChatCompletionObjectChoiceMessage, _$identity);

  /// Serializes this ChatCompletionObjectChoiceMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectChoiceMessage&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&const DeepCollectionEquality().equals(other.toolCalls, toolCalls)&&const DeepCollectionEquality().equals(other.audio, audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,const DeepCollectionEquality().hash(content),refusal,const DeepCollectionEquality().hash(toolCalls),const DeepCollectionEquality().hash(audio));

@override
String toString() {
  return 'ChatCompletionObjectChoiceMessage(role: $role, content: $content, refusal: $refusal, toolCalls: $toolCalls, audio: $audio)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectChoiceMessageCopyWith<$Res>  {
  factory $ChatCompletionObjectChoiceMessageCopyWith(ChatCompletionObjectChoiceMessage value, $Res Function(ChatCompletionObjectChoiceMessage) _then) = _$ChatCompletionObjectChoiceMessageCopyWithImpl;
@useResult
$Res call({
 String role, dynamic content, String? refusal,@JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls, Map<String, dynamic>? audio
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
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = freezed,Object? refusal = freezed,Object? toolCalls = freezed,Object? audio = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self.toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatCompletionObjectChoiceMessage].
extension ChatCompletionObjectChoiceMessagePatterns on ChatCompletionObjectChoiceMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCompletionObjectChoiceMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCompletionObjectChoiceMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCompletionObjectChoiceMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  dynamic content,  String? refusal, @JsonKey(name: 'tool_calls')  List<Map<String, dynamic>>? toolCalls,  Map<String, dynamic>? audio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage() when $default != null:
return $default(_that.role,_that.content,_that.refusal,_that.toolCalls,_that.audio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  dynamic content,  String? refusal, @JsonKey(name: 'tool_calls')  List<Map<String, dynamic>>? toolCalls,  Map<String, dynamic>? audio)  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage():
return $default(_that.role,_that.content,_that.refusal,_that.toolCalls,_that.audio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  dynamic content,  String? refusal, @JsonKey(name: 'tool_calls')  List<Map<String, dynamic>>? toolCalls,  Map<String, dynamic>? audio)?  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionObjectChoiceMessage() when $default != null:
return $default(_that.role,_that.content,_that.refusal,_that.toolCalls,_that.audio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectChoiceMessage extends ChatCompletionObjectChoiceMessage {
   _ChatCompletionObjectChoiceMessage({required this.role, this.content, this.refusal, @JsonKey(name: 'tool_calls') final  List<Map<String, dynamic>>? toolCalls, final  Map<String, dynamic>? audio}): _toolCalls = toolCalls,_audio = audio,super._();
  factory _ChatCompletionObjectChoiceMessage.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectChoiceMessageFromJson(json);

@override final  String role;
/// テキストのみの場合は String、マルチモーダルの場合は `List<dynamic>`。
@override final  dynamic content;
@override final  String? refusal;
/// ツール呼び出しリスト。finish_reason が tool_calls のとき設定される。
 final  List<Map<String, dynamic>>? _toolCalls;
/// ツール呼び出しリスト。finish_reason が tool_calls のとき設定される。
@override@JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? get toolCalls {
  final value = _toolCalls;
  if (value == null) return null;
  if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// 音声レスポンス（gpt-4o-audio 系モデルのみ）。
 final  Map<String, dynamic>? _audio;
/// 音声レスポンス（gpt-4o-audio 系モデルのみ）。
@override Map<String, dynamic>? get audio {
  final value = _audio;
  if (value == null) return null;
  if (_audio is EqualUnmodifiableMapView) return _audio;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectChoiceMessage&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&const DeepCollectionEquality().equals(other._toolCalls, _toolCalls)&&const DeepCollectionEquality().equals(other._audio, _audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,const DeepCollectionEquality().hash(content),refusal,const DeepCollectionEquality().hash(_toolCalls),const DeepCollectionEquality().hash(_audio));

@override
String toString() {
  return 'ChatCompletionObjectChoiceMessage(role: $role, content: $content, refusal: $refusal, toolCalls: $toolCalls, audio: $audio)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectChoiceMessageCopyWith<$Res> implements $ChatCompletionObjectChoiceMessageCopyWith<$Res> {
  factory _$ChatCompletionObjectChoiceMessageCopyWith(_ChatCompletionObjectChoiceMessage value, $Res Function(_ChatCompletionObjectChoiceMessage) _then) = __$ChatCompletionObjectChoiceMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, dynamic content, String? refusal,@JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls, Map<String, dynamic>? audio
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
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = freezed,Object? refusal = freezed,Object? toolCalls = freezed,Object? audio = freezed,}) {
  return _then(_ChatCompletionObjectChoiceMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self._toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,audio: freezed == audio ? _self._audio : audio // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
