// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestHeader {
  @JsonKey(name: 'x-api-key')
  String get apiKey;
  @JsonKey(name: 'anthropic-version')
  String get anthropicVersion;
  @JsonKey(
      name: 'anthropic-beta',
      toJson: _anthropicBetaToJson,
      fromJson: _anthropicBetaFromJson,
      includeIfNull: false)
  List<String>? get anthropicBeta;

  /// Create a copy of RequestHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestHeaderCopyWith<RequestHeader> get copyWith =>
      _$RequestHeaderCopyWithImpl<RequestHeader>(
          this as RequestHeader, _$identity);

  /// Serializes this RequestHeader to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestHeader &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.anthropicVersion, anthropicVersion) ||
                other.anthropicVersion == anthropicVersion) &&
            const DeepCollectionEquality()
                .equals(other.anthropicBeta, anthropicBeta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, anthropicVersion,
      const DeepCollectionEquality().hash(anthropicBeta));

  @override
  String toString() {
    return 'RequestHeader(apiKey: $apiKey, anthropicVersion: $anthropicVersion, anthropicBeta: $anthropicBeta)';
  }
}

/// @nodoc
abstract mixin class $RequestHeaderCopyWith<$Res> {
  factory $RequestHeaderCopyWith(
          RequestHeader value, $Res Function(RequestHeader) _then) =
      _$RequestHeaderCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'x-api-key') String apiKey,
      @JsonKey(name: 'anthropic-version') String anthropicVersion,
      @JsonKey(
          name: 'anthropic-beta',
          toJson: _anthropicBetaToJson,
          fromJson: _anthropicBetaFromJson,
          includeIfNull: false)
      List<String>? anthropicBeta});
}

/// @nodoc
class _$RequestHeaderCopyWithImpl<$Res>
    implements $RequestHeaderCopyWith<$Res> {
  _$RequestHeaderCopyWithImpl(this._self, this._then);

  final RequestHeader _self;
  final $Res Function(RequestHeader) _then;

  /// Create a copy of RequestHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? anthropicVersion = null,
    Object? anthropicBeta = freezed,
  }) {
    return _then(_self.copyWith(
      apiKey: null == apiKey
          ? _self.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      anthropicVersion: null == anthropicVersion
          ? _self.anthropicVersion
          : anthropicVersion // ignore: cast_nullable_to_non_nullable
              as String,
      anthropicBeta: freezed == anthropicBeta
          ? _self.anthropicBeta
          : anthropicBeta // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RequestHeader].
extension RequestHeaderPatterns on RequestHeader {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RequestHeader value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequestHeader() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RequestHeader value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestHeader():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RequestHeader value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestHeader() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'x-api-key') String apiKey,
            @JsonKey(name: 'anthropic-version') String anthropicVersion,
            @JsonKey(
                name: 'anthropic-beta',
                toJson: _anthropicBetaToJson,
                fromJson: _anthropicBetaFromJson,
                includeIfNull: false)
            List<String>? anthropicBeta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequestHeader() when $default != null:
        return $default(
            _that.apiKey, _that.anthropicVersion, _that.anthropicBeta);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'x-api-key') String apiKey,
            @JsonKey(name: 'anthropic-version') String anthropicVersion,
            @JsonKey(
                name: 'anthropic-beta',
                toJson: _anthropicBetaToJson,
                fromJson: _anthropicBetaFromJson,
                includeIfNull: false)
            List<String>? anthropicBeta)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestHeader():
        return $default(
            _that.apiKey, _that.anthropicVersion, _that.anthropicBeta);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'x-api-key') String apiKey,
            @JsonKey(name: 'anthropic-version') String anthropicVersion,
            @JsonKey(
                name: 'anthropic-beta',
                toJson: _anthropicBetaToJson,
                fromJson: _anthropicBetaFromJson,
                includeIfNull: false)
            List<String>? anthropicBeta)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestHeader() when $default != null:
        return $default(
            _that.apiKey, _that.anthropicVersion, _that.anthropicBeta);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RequestHeader extends RequestHeader {
  _RequestHeader(
      {@JsonKey(name: 'x-api-key') required this.apiKey,
      @JsonKey(name: 'anthropic-version') required this.anthropicVersion,
      @JsonKey(
          name: 'anthropic-beta',
          toJson: _anthropicBetaToJson,
          fromJson: _anthropicBetaFromJson,
          includeIfNull: false)
      final List<String>? anthropicBeta})
      : _anthropicBeta = anthropicBeta,
        super._();
  factory _RequestHeader.fromJson(Map<String, dynamic> json) =>
      _$RequestHeaderFromJson(json);

  @override
  @JsonKey(name: 'x-api-key')
  final String apiKey;
  @override
  @JsonKey(name: 'anthropic-version')
  final String anthropicVersion;
  final List<String>? _anthropicBeta;
  @override
  @JsonKey(
      name: 'anthropic-beta',
      toJson: _anthropicBetaToJson,
      fromJson: _anthropicBetaFromJson,
      includeIfNull: false)
  List<String>? get anthropicBeta {
    final value = _anthropicBeta;
    if (value == null) return null;
    if (_anthropicBeta is EqualUnmodifiableListView) return _anthropicBeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RequestHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequestHeaderCopyWith<_RequestHeader> get copyWith =>
      __$RequestHeaderCopyWithImpl<_RequestHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestHeaderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestHeader &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.anthropicVersion, anthropicVersion) ||
                other.anthropicVersion == anthropicVersion) &&
            const DeepCollectionEquality()
                .equals(other._anthropicBeta, _anthropicBeta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, anthropicVersion,
      const DeepCollectionEquality().hash(_anthropicBeta));

  @override
  String toString() {
    return 'RequestHeader(apiKey: $apiKey, anthropicVersion: $anthropicVersion, anthropicBeta: $anthropicBeta)';
  }
}

/// @nodoc
abstract mixin class _$RequestHeaderCopyWith<$Res>
    implements $RequestHeaderCopyWith<$Res> {
  factory _$RequestHeaderCopyWith(
          _RequestHeader value, $Res Function(_RequestHeader) _then) =
      __$RequestHeaderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'x-api-key') String apiKey,
      @JsonKey(name: 'anthropic-version') String anthropicVersion,
      @JsonKey(
          name: 'anthropic-beta',
          toJson: _anthropicBetaToJson,
          fromJson: _anthropicBetaFromJson,
          includeIfNull: false)
      List<String>? anthropicBeta});
}

/// @nodoc
class __$RequestHeaderCopyWithImpl<$Res>
    implements _$RequestHeaderCopyWith<$Res> {
  __$RequestHeaderCopyWithImpl(this._self, this._then);

  final _RequestHeader _self;
  final $Res Function(_RequestHeader) _then;

  /// Create a copy of RequestHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiKey = null,
    Object? anthropicVersion = null,
    Object? anthropicBeta = freezed,
  }) {
    return _then(_RequestHeader(
      apiKey: null == apiKey
          ? _self.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      anthropicVersion: null == anthropicVersion
          ? _self.anthropicVersion
          : anthropicVersion // ignore: cast_nullable_to_non_nullable
              as String,
      anthropicBeta: freezed == anthropicBeta
          ? _self._anthropicBeta
          : anthropicBeta // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
