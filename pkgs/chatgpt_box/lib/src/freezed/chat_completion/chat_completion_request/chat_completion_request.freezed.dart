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

 String get model; List<ChatCompletionRequestMessage> get messages;@JsonKey(name: 'max_completion_tokens') int? get maxCompletionTokens; int? get seed;
/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith => _$ChatCompletionRequestCopyWithImpl<ChatCompletionRequest>(this as ChatCompletionRequest, _$identity);

  /// Serializes this ChatCompletionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.maxCompletionTokens, maxCompletionTokens) || other.maxCompletionTokens == maxCompletionTokens)&&(identical(other.seed, seed) || other.seed == seed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(messages),maxCompletionTokens,seed);

@override
String toString() {
  return 'ChatCompletionRequest(model: $model, messages: $messages, maxCompletionTokens: $maxCompletionTokens, seed: $seed)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionRequestCopyWith<$Res>  {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value, $Res Function(ChatCompletionRequest) _then) = _$ChatCompletionRequestCopyWithImpl;
@useResult
$Res call({
 String model, List<ChatCompletionRequestMessage> messages,@JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens, int? seed
});




}
/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final ChatCompletionRequest _self;
  final $Res Function(ChatCompletionRequest) _then;

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? messages = null,Object? maxCompletionTokens = freezed,Object? seed = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionRequestMessage>,maxCompletionTokens: freezed == maxCompletionTokens ? _self.maxCompletionTokens : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
as int?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatCompletionRequest extends ChatCompletionRequest {
   _ChatCompletionRequest({required this.model, required final  List<ChatCompletionRequestMessage> messages, @JsonKey(name: 'max_completion_tokens') this.maxCompletionTokens, this.seed}): _messages = messages,super._();
  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) => _$ChatCompletionRequestFromJson(json);

@override final  String model;
 final  List<ChatCompletionRequestMessage> _messages;
@override List<ChatCompletionRequestMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey(name: 'max_completion_tokens') final  int? maxCompletionTokens;
@override final  int? seed;

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionRequestCopyWith<_ChatCompletionRequest> get copyWith => __$ChatCompletionRequestCopyWithImpl<_ChatCompletionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.maxCompletionTokens, maxCompletionTokens) || other.maxCompletionTokens == maxCompletionTokens)&&(identical(other.seed, seed) || other.seed == seed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_messages),maxCompletionTokens,seed);

@override
String toString() {
  return 'ChatCompletionRequest(model: $model, messages: $messages, maxCompletionTokens: $maxCompletionTokens, seed: $seed)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionRequestCopyWith<$Res> implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$ChatCompletionRequestCopyWith(_ChatCompletionRequest value, $Res Function(_ChatCompletionRequest) _then) = __$ChatCompletionRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, List<ChatCompletionRequestMessage> messages,@JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens, int? seed
});




}
/// @nodoc
class __$ChatCompletionRequestCopyWithImpl<$Res>
    implements _$ChatCompletionRequestCopyWith<$Res> {
  __$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final _ChatCompletionRequest _self;
  final $Res Function(_ChatCompletionRequest) _then;

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? messages = null,Object? maxCompletionTokens = freezed,Object? seed = freezed,}) {
  return _then(_ChatCompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionRequestMessage>,maxCompletionTokens: freezed == maxCompletionTokens ? _self.maxCompletionTokens : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
as int?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
