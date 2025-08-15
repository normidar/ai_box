// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCompletionResponse {
  List<ChatCompletionResponseChoice> get choices;
  int get created;
  String get id;
  String get model;
  String get object;
  List<Map<String, dynamic>>? get citations;
  @JsonKey(name: 'system_fingerprint')
  String? get systemFingerprint;
  ChatCompletionResponseUsage? get usage;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      _$ChatCompletionResponseCopyWithImpl<ChatCompletionResponse>(
          this as ChatCompletionResponse, _$identity);

  /// Serializes this ChatCompletionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatCompletionResponse &&
            const DeepCollectionEquality().equals(other.choices, choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other.citations, citations) &&
            (identical(other.systemFingerprint, systemFingerprint) ||
                other.systemFingerprint == systemFingerprint) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choices),
      created,
      id,
      model,
      object,
      const DeepCollectionEquality().hash(citations),
      systemFingerprint,
      usage);

  @override
  String toString() {
    return 'ChatCompletionResponse(choices: $choices, created: $created, id: $id, model: $model, object: $object, citations: $citations, systemFingerprint: $systemFingerprint, usage: $usage)';
  }
}

/// @nodoc
abstract mixin class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) _then) =
      _$ChatCompletionResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<ChatCompletionResponseChoice> choices,
      int created,
      String id,
      String model,
      String object,
      List<Map<String, dynamic>>? citations,
      @JsonKey(name: 'system_fingerprint') String? systemFingerprint,
      ChatCompletionResponseUsage? usage});

  $ChatCompletionResponseUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._self, this._then);

  final ChatCompletionResponse _self;
  final $Res Function(ChatCompletionResponse) _then;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? created = null,
    Object? id = null,
    Object? model = null,
    Object? object = null,
    Object? citations = freezed,
    Object? systemFingerprint = freezed,
    Object? usage = freezed,
  }) {
    return _then(_self.copyWith(
      choices: null == choices
          ? _self.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      citations: freezed == citations
          ? _self.citations
          : citations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      systemFingerprint: freezed == systemFingerprint
          ? _self.systemFingerprint
          : systemFingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage?,
    ));
  }

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCopyWith<$Res>(_self.usage!, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatCompletionResponse extends ChatCompletionResponse {
  _ChatCompletionResponse(
      {required final List<ChatCompletionResponseChoice> choices,
      required this.created,
      required this.id,
      required this.model,
      required this.object,
      final List<Map<String, dynamic>>? citations,
      @JsonKey(name: 'system_fingerprint') this.systemFingerprint,
      this.usage})
      : _choices = choices,
        _citations = citations,
        super._();
  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);

  final List<ChatCompletionResponseChoice> _choices;
  @override
  List<ChatCompletionResponseChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final int created;
  @override
  final String id;
  @override
  final String model;
  @override
  final String object;
  final List<Map<String, dynamic>>? _citations;
  @override
  List<Map<String, dynamic>>? get citations {
    final value = _citations;
    if (value == null) return null;
    if (_citations is EqualUnmodifiableListView) return _citations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'system_fingerprint')
  final String? systemFingerprint;
  @override
  final ChatCompletionResponseUsage? usage;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCompletionResponseCopyWith<_ChatCompletionResponse> get copyWith =>
      __$ChatCompletionResponseCopyWithImpl<_ChatCompletionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatCompletionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatCompletionResponse &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality()
                .equals(other._citations, _citations) &&
            (identical(other.systemFingerprint, systemFingerprint) ||
                other.systemFingerprint == systemFingerprint) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_choices),
      created,
      id,
      model,
      object,
      const DeepCollectionEquality().hash(_citations),
      systemFingerprint,
      usage);

  @override
  String toString() {
    return 'ChatCompletionResponse(choices: $choices, created: $created, id: $id, model: $model, object: $object, citations: $citations, systemFingerprint: $systemFingerprint, usage: $usage)';
  }
}

/// @nodoc
abstract mixin class _$ChatCompletionResponseCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$ChatCompletionResponseCopyWith(_ChatCompletionResponse value,
          $Res Function(_ChatCompletionResponse) _then) =
      __$ChatCompletionResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChatCompletionResponseChoice> choices,
      int created,
      String id,
      String model,
      String object,
      List<Map<String, dynamic>>? citations,
      @JsonKey(name: 'system_fingerprint') String? systemFingerprint,
      ChatCompletionResponseUsage? usage});

  @override
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$ChatCompletionResponseCopyWithImpl<$Res>
    implements _$ChatCompletionResponseCopyWith<$Res> {
  __$ChatCompletionResponseCopyWithImpl(this._self, this._then);

  final _ChatCompletionResponse _self;
  final $Res Function(_ChatCompletionResponse) _then;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? choices = null,
    Object? created = null,
    Object? id = null,
    Object? model = null,
    Object? object = null,
    Object? citations = freezed,
    Object? systemFingerprint = freezed,
    Object? usage = freezed,
  }) {
    return _then(_ChatCompletionResponse(
      choices: null == choices
          ? _self._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      citations: freezed == citations
          ? _self._citations
          : citations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      systemFingerprint: freezed == systemFingerprint
          ? _self.systemFingerprint
          : systemFingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _self.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage?,
    ));
  }

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
      return null;
    }

    return $ChatCompletionResponseUsageCopyWith<$Res>(_self.usage!, (value) {
      return _then(_self.copyWith(usage: value));
    });
  }
}

// dart format on
