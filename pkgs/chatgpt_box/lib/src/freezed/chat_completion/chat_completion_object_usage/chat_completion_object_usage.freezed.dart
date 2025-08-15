// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_object_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionObjectUsage {

@JsonKey(name: 'completion_tokens') int get completionTokens;@JsonKey(name: 'prompt_tokens') int get promptTokens;@JsonKey(name: 'total_tokens') int get totalTokens;@JsonKey(name: 'completion_tokens_details') ChatCompletionObjectUsageCompletionTokensDetails get completionTokensDetails;@JsonKey(name: 'prompt_tokens_details') ChatCompletionObjectUsagePromptTokensDetails get promptTokensDetails;
/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCopyWith<ChatCompletionObjectUsage> get copyWith => _$ChatCompletionObjectUsageCopyWithImpl<ChatCompletionObjectUsage>(this as ChatCompletionObjectUsage, _$identity);

  /// Serializes this ChatCompletionObjectUsage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectUsage&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.completionTokensDetails, completionTokensDetails) || other.completionTokensDetails == completionTokensDetails)&&(identical(other.promptTokensDetails, promptTokensDetails) || other.promptTokensDetails == promptTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,completionTokens,promptTokens,totalTokens,completionTokensDetails,promptTokensDetails);

@override
String toString() {
  return 'ChatCompletionObjectUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, completionTokensDetails: $completionTokensDetails, promptTokensDetails: $promptTokensDetails)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectUsageCopyWith<$Res>  {
  factory $ChatCompletionObjectUsageCopyWith(ChatCompletionObjectUsage value, $Res Function(ChatCompletionObjectUsage) _then) = _$ChatCompletionObjectUsageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'completion_tokens') int completionTokens,@JsonKey(name: 'prompt_tokens') int promptTokens,@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'completion_tokens_details') ChatCompletionObjectUsageCompletionTokensDetails completionTokensDetails,@JsonKey(name: 'prompt_tokens_details') ChatCompletionObjectUsagePromptTokensDetails promptTokensDetails
});


$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> get completionTokensDetails;$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> get promptTokensDetails;

}
/// @nodoc
class _$ChatCompletionObjectUsageCopyWithImpl<$Res>
    implements $ChatCompletionObjectUsageCopyWith<$Res> {
  _$ChatCompletionObjectUsageCopyWithImpl(this._self, this._then);

  final ChatCompletionObjectUsage _self;
  final $Res Function(ChatCompletionObjectUsage) _then;

/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? completionTokens = null,Object? promptTokens = null,Object? totalTokens = null,Object? completionTokensDetails = null,Object? promptTokensDetails = null,}) {
  return _then(_self.copyWith(
completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokensDetails: null == completionTokensDetails ? _self.completionTokensDetails : completionTokensDetails // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsageCompletionTokensDetails,promptTokensDetails: null == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsagePromptTokensDetails,
  ));
}
/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> get completionTokensDetails {
  
  return $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res>(_self.completionTokensDetails, (value) {
    return _then(_self.copyWith(completionTokensDetails: value));
  });
}/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> get promptTokensDetails {
  
  return $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res>(_self.promptTokensDetails, (value) {
    return _then(_self.copyWith(promptTokensDetails: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectUsage extends ChatCompletionObjectUsage {
   _ChatCompletionObjectUsage({@JsonKey(name: 'completion_tokens') required this.completionTokens, @JsonKey(name: 'prompt_tokens') required this.promptTokens, @JsonKey(name: 'total_tokens') required this.totalTokens, @JsonKey(name: 'completion_tokens_details') required this.completionTokensDetails, @JsonKey(name: 'prompt_tokens_details') required this.promptTokensDetails}): super._();
  factory _ChatCompletionObjectUsage.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectUsageFromJson(json);

@override@JsonKey(name: 'completion_tokens') final  int completionTokens;
@override@JsonKey(name: 'prompt_tokens') final  int promptTokens;
@override@JsonKey(name: 'total_tokens') final  int totalTokens;
@override@JsonKey(name: 'completion_tokens_details') final  ChatCompletionObjectUsageCompletionTokensDetails completionTokensDetails;
@override@JsonKey(name: 'prompt_tokens_details') final  ChatCompletionObjectUsagePromptTokensDetails promptTokensDetails;

/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectUsageCopyWith<_ChatCompletionObjectUsage> get copyWith => __$ChatCompletionObjectUsageCopyWithImpl<_ChatCompletionObjectUsage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectUsageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectUsage&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.completionTokensDetails, completionTokensDetails) || other.completionTokensDetails == completionTokensDetails)&&(identical(other.promptTokensDetails, promptTokensDetails) || other.promptTokensDetails == promptTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,completionTokens,promptTokens,totalTokens,completionTokensDetails,promptTokensDetails);

@override
String toString() {
  return 'ChatCompletionObjectUsage(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens, completionTokensDetails: $completionTokensDetails, promptTokensDetails: $promptTokensDetails)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectUsageCopyWith<$Res> implements $ChatCompletionObjectUsageCopyWith<$Res> {
  factory _$ChatCompletionObjectUsageCopyWith(_ChatCompletionObjectUsage value, $Res Function(_ChatCompletionObjectUsage) _then) = __$ChatCompletionObjectUsageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'completion_tokens') int completionTokens,@JsonKey(name: 'prompt_tokens') int promptTokens,@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'completion_tokens_details') ChatCompletionObjectUsageCompletionTokensDetails completionTokensDetails,@JsonKey(name: 'prompt_tokens_details') ChatCompletionObjectUsagePromptTokensDetails promptTokensDetails
});


@override $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> get completionTokensDetails;@override $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> get promptTokensDetails;

}
/// @nodoc
class __$ChatCompletionObjectUsageCopyWithImpl<$Res>
    implements _$ChatCompletionObjectUsageCopyWith<$Res> {
  __$ChatCompletionObjectUsageCopyWithImpl(this._self, this._then);

  final _ChatCompletionObjectUsage _self;
  final $Res Function(_ChatCompletionObjectUsage) _then;

/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completionTokens = null,Object? promptTokens = null,Object? totalTokens = null,Object? completionTokensDetails = null,Object? promptTokensDetails = null,}) {
  return _then(_ChatCompletionObjectUsage(
completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokensDetails: null == completionTokensDetails ? _self.completionTokensDetails : completionTokensDetails // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsageCompletionTokensDetails,promptTokensDetails: null == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsagePromptTokensDetails,
  ));
}

/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> get completionTokensDetails {
  
  return $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res>(_self.completionTokensDetails, (value) {
    return _then(_self.copyWith(completionTokensDetails: value));
  });
}/// Create a copy of ChatCompletionObjectUsage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> get promptTokensDetails {
  
  return $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res>(_self.promptTokensDetails, (value) {
    return _then(_self.copyWith(promptTokensDetails: value));
  });
}
}


/// @nodoc
mixin _$ChatCompletionObjectUsageCompletionTokensDetails {

@JsonKey(name: 'accepted_prediction_tokens') int get acceptedPredictionTokens;@JsonKey(name: 'audio_tokens') int get audioTokens;@JsonKey(name: 'reasoning_tokens') int get reasoningTokens;@JsonKey(name: 'rejected_prediction_tokens') int get rejectedPredictionTokens;
/// Create a copy of ChatCompletionObjectUsageCompletionTokensDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<ChatCompletionObjectUsageCompletionTokensDetails> get copyWith => _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl<ChatCompletionObjectUsageCompletionTokensDetails>(this as ChatCompletionObjectUsageCompletionTokensDetails, _$identity);

  /// Serializes this ChatCompletionObjectUsageCompletionTokensDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectUsageCompletionTokensDetails&&(identical(other.acceptedPredictionTokens, acceptedPredictionTokens) || other.acceptedPredictionTokens == acceptedPredictionTokens)&&(identical(other.audioTokens, audioTokens) || other.audioTokens == audioTokens)&&(identical(other.reasoningTokens, reasoningTokens) || other.reasoningTokens == reasoningTokens)&&(identical(other.rejectedPredictionTokens, rejectedPredictionTokens) || other.rejectedPredictionTokens == rejectedPredictionTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acceptedPredictionTokens,audioTokens,reasoningTokens,rejectedPredictionTokens);

@override
String toString() {
  return 'ChatCompletionObjectUsageCompletionTokensDetails(acceptedPredictionTokens: $acceptedPredictionTokens, audioTokens: $audioTokens, reasoningTokens: $reasoningTokens, rejectedPredictionTokens: $rejectedPredictionTokens)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res>  {
  factory $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith(ChatCompletionObjectUsageCompletionTokensDetails value, $Res Function(ChatCompletionObjectUsageCompletionTokensDetails) _then) = _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accepted_prediction_tokens') int acceptedPredictionTokens,@JsonKey(name: 'audio_tokens') int audioTokens,@JsonKey(name: 'reasoning_tokens') int reasoningTokens,@JsonKey(name: 'rejected_prediction_tokens') int rejectedPredictionTokens
});




}
/// @nodoc
class _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl<$Res>
    implements $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> {
  _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl(this._self, this._then);

  final ChatCompletionObjectUsageCompletionTokensDetails _self;
  final $Res Function(ChatCompletionObjectUsageCompletionTokensDetails) _then;

/// Create a copy of ChatCompletionObjectUsageCompletionTokensDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acceptedPredictionTokens = null,Object? audioTokens = null,Object? reasoningTokens = null,Object? rejectedPredictionTokens = null,}) {
  return _then(_self.copyWith(
acceptedPredictionTokens: null == acceptedPredictionTokens ? _self.acceptedPredictionTokens : acceptedPredictionTokens // ignore: cast_nullable_to_non_nullable
as int,audioTokens: null == audioTokens ? _self.audioTokens : audioTokens // ignore: cast_nullable_to_non_nullable
as int,reasoningTokens: null == reasoningTokens ? _self.reasoningTokens : reasoningTokens // ignore: cast_nullable_to_non_nullable
as int,rejectedPredictionTokens: null == rejectedPredictionTokens ? _self.rejectedPredictionTokens : rejectedPredictionTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectUsageCompletionTokensDetails extends ChatCompletionObjectUsageCompletionTokensDetails {
   _ChatCompletionObjectUsageCompletionTokensDetails({@JsonKey(name: 'accepted_prediction_tokens') required this.acceptedPredictionTokens, @JsonKey(name: 'audio_tokens') required this.audioTokens, @JsonKey(name: 'reasoning_tokens') required this.reasoningTokens, @JsonKey(name: 'rejected_prediction_tokens') required this.rejectedPredictionTokens}): super._();
  factory _ChatCompletionObjectUsageCompletionTokensDetails.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectUsageCompletionTokensDetailsFromJson(json);

@override@JsonKey(name: 'accepted_prediction_tokens') final  int acceptedPredictionTokens;
@override@JsonKey(name: 'audio_tokens') final  int audioTokens;
@override@JsonKey(name: 'reasoning_tokens') final  int reasoningTokens;
@override@JsonKey(name: 'rejected_prediction_tokens') final  int rejectedPredictionTokens;

/// Create a copy of ChatCompletionObjectUsageCompletionTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<_ChatCompletionObjectUsageCompletionTokensDetails> get copyWith => __$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl<_ChatCompletionObjectUsageCompletionTokensDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectUsageCompletionTokensDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectUsageCompletionTokensDetails&&(identical(other.acceptedPredictionTokens, acceptedPredictionTokens) || other.acceptedPredictionTokens == acceptedPredictionTokens)&&(identical(other.audioTokens, audioTokens) || other.audioTokens == audioTokens)&&(identical(other.reasoningTokens, reasoningTokens) || other.reasoningTokens == reasoningTokens)&&(identical(other.rejectedPredictionTokens, rejectedPredictionTokens) || other.rejectedPredictionTokens == rejectedPredictionTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acceptedPredictionTokens,audioTokens,reasoningTokens,rejectedPredictionTokens);

@override
String toString() {
  return 'ChatCompletionObjectUsageCompletionTokensDetails(acceptedPredictionTokens: $acceptedPredictionTokens, audioTokens: $audioTokens, reasoningTokens: $reasoningTokens, rejectedPredictionTokens: $rejectedPredictionTokens)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> implements $ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> {
  factory _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith(_ChatCompletionObjectUsageCompletionTokensDetails value, $Res Function(_ChatCompletionObjectUsageCompletionTokensDetails) _then) = __$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accepted_prediction_tokens') int acceptedPredictionTokens,@JsonKey(name: 'audio_tokens') int audioTokens,@JsonKey(name: 'reasoning_tokens') int reasoningTokens,@JsonKey(name: 'rejected_prediction_tokens') int rejectedPredictionTokens
});




}
/// @nodoc
class __$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl<$Res>
    implements _$ChatCompletionObjectUsageCompletionTokensDetailsCopyWith<$Res> {
  __$ChatCompletionObjectUsageCompletionTokensDetailsCopyWithImpl(this._self, this._then);

  final _ChatCompletionObjectUsageCompletionTokensDetails _self;
  final $Res Function(_ChatCompletionObjectUsageCompletionTokensDetails) _then;

/// Create a copy of ChatCompletionObjectUsageCompletionTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptedPredictionTokens = null,Object? audioTokens = null,Object? reasoningTokens = null,Object? rejectedPredictionTokens = null,}) {
  return _then(_ChatCompletionObjectUsageCompletionTokensDetails(
acceptedPredictionTokens: null == acceptedPredictionTokens ? _self.acceptedPredictionTokens : acceptedPredictionTokens // ignore: cast_nullable_to_non_nullable
as int,audioTokens: null == audioTokens ? _self.audioTokens : audioTokens // ignore: cast_nullable_to_non_nullable
as int,reasoningTokens: null == reasoningTokens ? _self.reasoningTokens : reasoningTokens // ignore: cast_nullable_to_non_nullable
as int,rejectedPredictionTokens: null == rejectedPredictionTokens ? _self.rejectedPredictionTokens : rejectedPredictionTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ChatCompletionObjectUsagePromptTokensDetails {

@JsonKey(name: 'audio_tokens') int get audioTokens;@JsonKey(name: 'cached_tokens') int get cachedTokens;
/// Create a copy of ChatCompletionObjectUsagePromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<ChatCompletionObjectUsagePromptTokensDetails> get copyWith => _$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl<ChatCompletionObjectUsagePromptTokensDetails>(this as ChatCompletionObjectUsagePromptTokensDetails, _$identity);

  /// Serializes this ChatCompletionObjectUsagePromptTokensDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObjectUsagePromptTokensDetails&&(identical(other.audioTokens, audioTokens) || other.audioTokens == audioTokens)&&(identical(other.cachedTokens, cachedTokens) || other.cachedTokens == cachedTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,audioTokens,cachedTokens);

@override
String toString() {
  return 'ChatCompletionObjectUsagePromptTokensDetails(audioTokens: $audioTokens, cachedTokens: $cachedTokens)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res>  {
  factory $ChatCompletionObjectUsagePromptTokensDetailsCopyWith(ChatCompletionObjectUsagePromptTokensDetails value, $Res Function(ChatCompletionObjectUsagePromptTokensDetails) _then) = _$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'audio_tokens') int audioTokens,@JsonKey(name: 'cached_tokens') int cachedTokens
});




}
/// @nodoc
class _$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl<$Res>
    implements $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> {
  _$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl(this._self, this._then);

  final ChatCompletionObjectUsagePromptTokensDetails _self;
  final $Res Function(ChatCompletionObjectUsagePromptTokensDetails) _then;

/// Create a copy of ChatCompletionObjectUsagePromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? audioTokens = null,Object? cachedTokens = null,}) {
  return _then(_self.copyWith(
audioTokens: null == audioTokens ? _self.audioTokens : audioTokens // ignore: cast_nullable_to_non_nullable
as int,cachedTokens: null == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObjectUsagePromptTokensDetails extends ChatCompletionObjectUsagePromptTokensDetails {
   _ChatCompletionObjectUsagePromptTokensDetails({@JsonKey(name: 'audio_tokens') required this.audioTokens, @JsonKey(name: 'cached_tokens') required this.cachedTokens}): super._();
  factory _ChatCompletionObjectUsagePromptTokensDetails.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectUsagePromptTokensDetailsFromJson(json);

@override@JsonKey(name: 'audio_tokens') final  int audioTokens;
@override@JsonKey(name: 'cached_tokens') final  int cachedTokens;

/// Create a copy of ChatCompletionObjectUsagePromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<_ChatCompletionObjectUsagePromptTokensDetails> get copyWith => __$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl<_ChatCompletionObjectUsagePromptTokensDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectUsagePromptTokensDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObjectUsagePromptTokensDetails&&(identical(other.audioTokens, audioTokens) || other.audioTokens == audioTokens)&&(identical(other.cachedTokens, cachedTokens) || other.cachedTokens == cachedTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,audioTokens,cachedTokens);

@override
String toString() {
  return 'ChatCompletionObjectUsagePromptTokensDetails(audioTokens: $audioTokens, cachedTokens: $cachedTokens)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> implements $ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> {
  factory _$ChatCompletionObjectUsagePromptTokensDetailsCopyWith(_ChatCompletionObjectUsagePromptTokensDetails value, $Res Function(_ChatCompletionObjectUsagePromptTokensDetails) _then) = __$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'audio_tokens') int audioTokens,@JsonKey(name: 'cached_tokens') int cachedTokens
});




}
/// @nodoc
class __$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl<$Res>
    implements _$ChatCompletionObjectUsagePromptTokensDetailsCopyWith<$Res> {
  __$ChatCompletionObjectUsagePromptTokensDetailsCopyWithImpl(this._self, this._then);

  final _ChatCompletionObjectUsagePromptTokensDetails _self;
  final $Res Function(_ChatCompletionObjectUsagePromptTokensDetails) _then;

/// Create a copy of ChatCompletionObjectUsagePromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? audioTokens = null,Object? cachedTokens = null,}) {
  return _then(_ChatCompletionObjectUsagePromptTokensDetails(
audioTokens: null == audioTokens ? _self.audioTokens : audioTokens // ignore: cast_nullable_to_non_nullable
as int,cachedTokens: null == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
