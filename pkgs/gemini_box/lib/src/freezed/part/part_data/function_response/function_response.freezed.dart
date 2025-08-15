// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FunctionResponse {
  String get name;
  Map<String, dynamic> get response;
  String? get id;
  bool? get willContinue;
  Scheduling? get scheduling;

  /// Create a copy of FunctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FunctionResponseCopyWith<FunctionResponse> get copyWith =>
      _$FunctionResponseCopyWithImpl<FunctionResponse>(
          this as FunctionResponse, _$identity);

  /// Serializes this FunctionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FunctionResponse &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.willContinue, willContinue) ||
                other.willContinue == willContinue) &&
            (identical(other.scheduling, scheduling) ||
                other.scheduling == scheduling));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(response),
      id,
      willContinue,
      scheduling);

  @override
  String toString() {
    return 'FunctionResponse(name: $name, response: $response, id: $id, willContinue: $willContinue, scheduling: $scheduling)';
  }
}

/// @nodoc
abstract mixin class $FunctionResponseCopyWith<$Res> {
  factory $FunctionResponseCopyWith(
          FunctionResponse value, $Res Function(FunctionResponse) _then) =
      _$FunctionResponseCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Map<String, dynamic> response,
      String? id,
      bool? willContinue,
      Scheduling? scheduling});
}

/// @nodoc
class _$FunctionResponseCopyWithImpl<$Res>
    implements $FunctionResponseCopyWith<$Res> {
  _$FunctionResponseCopyWithImpl(this._self, this._then);

  final FunctionResponse _self;
  final $Res Function(FunctionResponse) _then;

  /// Create a copy of FunctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? response = null,
    Object? id = freezed,
    Object? willContinue = freezed,
    Object? scheduling = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      willContinue: freezed == willContinue
          ? _self.willContinue
          : willContinue // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduling: freezed == scheduling
          ? _self.scheduling
          : scheduling // ignore: cast_nullable_to_non_nullable
              as Scheduling?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FunctionResponse extends FunctionResponse {
  _FunctionResponse(
      {required this.name,
      required final Map<String, dynamic> response,
      this.id,
      this.willContinue,
      this.scheduling})
      : _response = response,
        super._();
  factory _FunctionResponse.fromJson(Map<String, dynamic> json) =>
      _$FunctionResponseFromJson(json);

  @override
  final String name;
  final Map<String, dynamic> _response;
  @override
  Map<String, dynamic> get response {
    if (_response is EqualUnmodifiableMapView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_response);
  }

  @override
  final String? id;
  @override
  final bool? willContinue;
  @override
  final Scheduling? scheduling;

  /// Create a copy of FunctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FunctionResponseCopyWith<_FunctionResponse> get copyWith =>
      __$FunctionResponseCopyWithImpl<_FunctionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FunctionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunctionResponse &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._response, _response) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.willContinue, willContinue) ||
                other.willContinue == willContinue) &&
            (identical(other.scheduling, scheduling) ||
                other.scheduling == scheduling));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_response),
      id,
      willContinue,
      scheduling);

  @override
  String toString() {
    return 'FunctionResponse(name: $name, response: $response, id: $id, willContinue: $willContinue, scheduling: $scheduling)';
  }
}

/// @nodoc
abstract mixin class _$FunctionResponseCopyWith<$Res>
    implements $FunctionResponseCopyWith<$Res> {
  factory _$FunctionResponseCopyWith(
          _FunctionResponse value, $Res Function(_FunctionResponse) _then) =
      __$FunctionResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Map<String, dynamic> response,
      String? id,
      bool? willContinue,
      Scheduling? scheduling});
}

/// @nodoc
class __$FunctionResponseCopyWithImpl<$Res>
    implements _$FunctionResponseCopyWith<$Res> {
  __$FunctionResponseCopyWithImpl(this._self, this._then);

  final _FunctionResponse _self;
  final $Res Function(_FunctionResponse) _then;

  /// Create a copy of FunctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? response = null,
    Object? id = freezed,
    Object? willContinue = freezed,
    Object? scheduling = freezed,
  }) {
    return _then(_FunctionResponse(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _self._response
          : response // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      willContinue: freezed == willContinue
          ? _self.willContinue
          : willContinue // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduling: freezed == scheduling
          ? _self.scheduling
          : scheduling // ignore: cast_nullable_to_non_nullable
              as Scheduling?,
    ));
  }
}

// dart format on
