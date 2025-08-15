// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionObject {

 List<ChatCompletionObjectChoice> get choices; int get created; String get id; String get model; String get object;@JsonKey(name: 'system_fingerprint') String get systemFingerprint; ChatCompletionObjectUsage get usage;@JsonKey(name: 'service_tier') String? get serviceTier;
/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionObjectCopyWith<ChatCompletionObject> get copyWith => _$ChatCompletionObjectCopyWithImpl<ChatCompletionObject>(this as ChatCompletionObject, _$identity);

  /// Serializes this ChatCompletionObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionObject&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.model, model) || other.model == model)&&(identical(other.object, object) || other.object == object)&&(identical(other.systemFingerprint, systemFingerprint) || other.systemFingerprint == systemFingerprint)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(choices),created,id,model,object,systemFingerprint,usage,serviceTier);

@override
String toString() {
  return 'ChatCompletionObject(choices: $choices, created: $created, id: $id, model: $model, object: $object, systemFingerprint: $systemFingerprint, usage: $usage, serviceTier: $serviceTier)';
}


}

/// @nodoc
abstract mixin class $ChatCompletionObjectCopyWith<$Res>  {
  factory $ChatCompletionObjectCopyWith(ChatCompletionObject value, $Res Function(ChatCompletionObject) _then) = _$ChatCompletionObjectCopyWithImpl;
@useResult
$Res call({
 List<ChatCompletionObjectChoice> choices, int created, String id, String model, String object,@JsonKey(name: 'system_fingerprint') String systemFingerprint, ChatCompletionObjectUsage usage,@JsonKey(name: 'service_tier') String? serviceTier
});


$ChatCompletionObjectUsageCopyWith<$Res> get usage;

}
/// @nodoc
class _$ChatCompletionObjectCopyWithImpl<$Res>
    implements $ChatCompletionObjectCopyWith<$Res> {
  _$ChatCompletionObjectCopyWithImpl(this._self, this._then);

  final ChatCompletionObject _self;
  final $Res Function(ChatCompletionObject) _then;

/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? choices = null,Object? created = null,Object? id = null,Object? model = null,Object? object = null,Object? systemFingerprint = null,Object? usage = null,Object? serviceTier = freezed,}) {
  return _then(_self.copyWith(
choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionObjectChoice>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,systemFingerprint: null == systemFingerprint ? _self.systemFingerprint : systemFingerprint // ignore: cast_nullable_to_non_nullable
as String,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsage,serviceTier: freezed == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCopyWith<$Res> get usage {
  
  return $ChatCompletionObjectUsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ChatCompletionObject extends ChatCompletionObject {
   _ChatCompletionObject({required final  List<ChatCompletionObjectChoice> choices, required this.created, required this.id, required this.model, required this.object, @JsonKey(name: 'system_fingerprint') required this.systemFingerprint, required this.usage, @JsonKey(name: 'service_tier') this.serviceTier}): _choices = choices,super._();
  factory _ChatCompletionObject.fromJson(Map<String, dynamic> json) => _$ChatCompletionObjectFromJson(json);

 final  List<ChatCompletionObjectChoice> _choices;
@override List<ChatCompletionObjectChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  int created;
@override final  String id;
@override final  String model;
@override final  String object;
@override@JsonKey(name: 'system_fingerprint') final  String systemFingerprint;
@override final  ChatCompletionObjectUsage usage;
@override@JsonKey(name: 'service_tier') final  String? serviceTier;

/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionObjectCopyWith<_ChatCompletionObject> get copyWith => __$ChatCompletionObjectCopyWithImpl<_ChatCompletionObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionObject&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.model, model) || other.model == model)&&(identical(other.object, object) || other.object == object)&&(identical(other.systemFingerprint, systemFingerprint) || other.systemFingerprint == systemFingerprint)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_choices),created,id,model,object,systemFingerprint,usage,serviceTier);

@override
String toString() {
  return 'ChatCompletionObject(choices: $choices, created: $created, id: $id, model: $model, object: $object, systemFingerprint: $systemFingerprint, usage: $usage, serviceTier: $serviceTier)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionObjectCopyWith<$Res> implements $ChatCompletionObjectCopyWith<$Res> {
  factory _$ChatCompletionObjectCopyWith(_ChatCompletionObject value, $Res Function(_ChatCompletionObject) _then) = __$ChatCompletionObjectCopyWithImpl;
@override @useResult
$Res call({
 List<ChatCompletionObjectChoice> choices, int created, String id, String model, String object,@JsonKey(name: 'system_fingerprint') String systemFingerprint, ChatCompletionObjectUsage usage,@JsonKey(name: 'service_tier') String? serviceTier
});


@override $ChatCompletionObjectUsageCopyWith<$Res> get usage;

}
/// @nodoc
class __$ChatCompletionObjectCopyWithImpl<$Res>
    implements _$ChatCompletionObjectCopyWith<$Res> {
  __$ChatCompletionObjectCopyWithImpl(this._self, this._then);

  final _ChatCompletionObject _self;
  final $Res Function(_ChatCompletionObject) _then;

/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? choices = null,Object? created = null,Object? id = null,Object? model = null,Object? object = null,Object? systemFingerprint = null,Object? usage = null,Object? serviceTier = freezed,}) {
  return _then(_ChatCompletionObject(
choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatCompletionObjectChoice>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,systemFingerprint: null == systemFingerprint ? _self.systemFingerprint : systemFingerprint // ignore: cast_nullable_to_non_nullable
as String,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as ChatCompletionObjectUsage,serviceTier: freezed == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatCompletionObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCompletionObjectUsageCopyWith<$Res> get usage {
  
  return $ChatCompletionObjectUsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}

// dart format on
