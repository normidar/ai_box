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

 String get model; List<ChatCompletionRequestMessage> get messages;@JsonKey(name: 'max_completion_tokens') int? get maxCompletionTokens; double? get temperature;@JsonKey(name: 'top_p') double? get topP; List<String>? get stop; int? get seed;@JsonKey(name: 'frequency_penalty') double? get frequencyPenalty;@JsonKey(name: 'presence_penalty') double? get presencePenalty;@JsonKey(name: 'response_format') Map<String, dynamic>? get responseFormat;
/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith => _$ChatCompletionRequestCopyWithImpl<ChatCompletionRequest>(this as ChatCompletionRequest, _$identity);

  /// Serializes this ChatCompletionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.maxCompletionTokens, maxCompletionTokens) || other.maxCompletionTokens == maxCompletionTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&const DeepCollectionEquality().equals(other.stop, stop)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&const DeepCollectionEquality().equals(other.responseFormat, responseFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(messages),maxCompletionTokens,temperature,topP,const DeepCollectionEquality().hash(stop),seed,frequencyPenalty,presencePenalty,const DeepCollectionEquality().hash(responseFormat));

@override
String toString() {
  return 'ChatCompletionRequest(model: $model, messages: $messages, maxCompletionTokens: $maxCompletionTokens, temperature: $temperature, topP: $topP, stop: $stop, seed: $seed, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, responseFormat: $responseFormat)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionRequestCopyWith<$Res>  {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value, $Res Function(ChatCompletionRequest) _then) = _$ChatCompletionRequestCopyWithImpl;
@useResult
$Res call({
 String model, List<ChatCompletionRequestMessage> messages,@JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens, double? temperature,@JsonKey(name: 'top_p') double? topP, List<String>? stop, int? seed,@JsonKey(name: 'frequency_penalty') double? frequencyPenalty,@JsonKey(name: 'presence_penalty') double? presencePenalty,@JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat
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
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? messages = null,Object? maxCompletionTokens = freezed,Object? temperature = freezed,Object? topP = freezed,Object? stop = freezed,Object? seed = freezed,Object? frequencyPenalty = freezed,Object? presencePenalty = freezed,Object? responseFormat = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionRequestMessage>,maxCompletionTokens: freezed == maxCompletionTokens ? _self.maxCompletionTokens : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
as int?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as List<String>?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int?,frequencyPenalty: freezed == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double?,presencePenalty: freezed == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double?,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCompletionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCompletionRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCompletionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  List<ChatCompletionRequestMessage> messages, @JsonKey(name: 'max_completion_tokens')  int? maxCompletionTokens,  double? temperature, @JsonKey(name: 'top_p')  double? topP,  List<String>? stop,  int? seed, @JsonKey(name: 'frequency_penalty')  double? frequencyPenalty, @JsonKey(name: 'presence_penalty')  double? presencePenalty, @JsonKey(name: 'response_format')  Map<String, dynamic>? responseFormat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
return $default(_that.model,_that.messages,_that.maxCompletionTokens,_that.temperature,_that.topP,_that.stop,_that.seed,_that.frequencyPenalty,_that.presencePenalty,_that.responseFormat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  List<ChatCompletionRequestMessage> messages, @JsonKey(name: 'max_completion_tokens')  int? maxCompletionTokens,  double? temperature, @JsonKey(name: 'top_p')  double? topP,  List<String>? stop,  int? seed, @JsonKey(name: 'frequency_penalty')  double? frequencyPenalty, @JsonKey(name: 'presence_penalty')  double? presencePenalty, @JsonKey(name: 'response_format')  Map<String, dynamic>? responseFormat)  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionRequest():
return $default(_that.model,_that.messages,_that.maxCompletionTokens,_that.temperature,_that.topP,_that.stop,_that.seed,_that.frequencyPenalty,_that.presencePenalty,_that.responseFormat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  List<ChatCompletionRequestMessage> messages, @JsonKey(name: 'max_completion_tokens')  int? maxCompletionTokens,  double? temperature, @JsonKey(name: 'top_p')  double? topP,  List<String>? stop,  int? seed, @JsonKey(name: 'frequency_penalty')  double? frequencyPenalty, @JsonKey(name: 'presence_penalty')  double? presencePenalty, @JsonKey(name: 'response_format')  Map<String, dynamic>? responseFormat)?  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
return $default(_that.model,_that.messages,_that.maxCompletionTokens,_that.temperature,_that.topP,_that.stop,_that.seed,_that.frequencyPenalty,_that.presencePenalty,_that.responseFormat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCompletionRequest extends ChatCompletionRequest {
   _ChatCompletionRequest({required this.model, required final  List<ChatCompletionRequestMessage> messages, @JsonKey(name: 'max_completion_tokens') this.maxCompletionTokens, this.temperature, @JsonKey(name: 'top_p') this.topP, final  List<String>? stop, this.seed, @JsonKey(name: 'frequency_penalty') this.frequencyPenalty, @JsonKey(name: 'presence_penalty') this.presencePenalty, @JsonKey(name: 'response_format') final  Map<String, dynamic>? responseFormat}): _messages = messages,_stop = stop,_responseFormat = responseFormat,super._();
  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) => _$ChatCompletionRequestFromJson(json);

@override final  String model;
 final  List<ChatCompletionRequestMessage> _messages;
@override List<ChatCompletionRequestMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey(name: 'max_completion_tokens') final  int? maxCompletionTokens;
@override final  double? temperature;
@override@JsonKey(name: 'top_p') final  double? topP;
 final  List<String>? _stop;
@override List<String>? get stop {
  final value = _stop;
  if (value == null) return null;
  if (_stop is EqualUnmodifiableListView) return _stop;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? seed;
@override@JsonKey(name: 'frequency_penalty') final  double? frequencyPenalty;
@override@JsonKey(name: 'presence_penalty') final  double? presencePenalty;
 final  Map<String, dynamic>? _responseFormat;
@override@JsonKey(name: 'response_format') Map<String, dynamic>? get responseFormat {
  final value = _responseFormat;
  if (value == null) return null;
  if (_responseFormat is EqualUnmodifiableMapView) return _responseFormat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.maxCompletionTokens, maxCompletionTokens) || other.maxCompletionTokens == maxCompletionTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&const DeepCollectionEquality().equals(other._stop, _stop)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&const DeepCollectionEquality().equals(other._responseFormat, _responseFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_messages),maxCompletionTokens,temperature,topP,const DeepCollectionEquality().hash(_stop),seed,frequencyPenalty,presencePenalty,const DeepCollectionEquality().hash(_responseFormat));

@override
String toString() {
  return 'ChatCompletionRequest(model: $model, messages: $messages, maxCompletionTokens: $maxCompletionTokens, temperature: $temperature, topP: $topP, stop: $stop, seed: $seed, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, responseFormat: $responseFormat)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionRequestCopyWith<$Res> implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$ChatCompletionRequestCopyWith(_ChatCompletionRequest value, $Res Function(_ChatCompletionRequest) _then) = __$ChatCompletionRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, List<ChatCompletionRequestMessage> messages,@JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens, double? temperature,@JsonKey(name: 'top_p') double? topP, List<String>? stop, int? seed,@JsonKey(name: 'frequency_penalty') double? frequencyPenalty,@JsonKey(name: 'presence_penalty') double? presencePenalty,@JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat
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
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? messages = null,Object? maxCompletionTokens = freezed,Object? temperature = freezed,Object? topP = freezed,Object? stop = freezed,Object? seed = freezed,Object? frequencyPenalty = freezed,Object? presencePenalty = freezed,Object? responseFormat = freezed,}) {
  return _then(_ChatCompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionRequestMessage>,maxCompletionTokens: freezed == maxCompletionTokens ? _self.maxCompletionTokens : maxCompletionTokens // ignore: cast_nullable_to_non_nullable
as int?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,stop: freezed == stop ? _self._stop : stop // ignore: cast_nullable_to_non_nullable
as List<String>?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int?,frequencyPenalty: freezed == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double?,presencePenalty: freezed == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double?,responseFormat: freezed == responseFormat ? _self._responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
