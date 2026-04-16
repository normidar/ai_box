// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_models_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListModelsQueryParameters {
  @JsonKey(name: 'after_id')
  String? get afterId;
  @JsonKey(name: 'before_id')
  String? get beforeId;
  int? get limit;

  /// Create a copy of ListModelsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListModelsQueryParametersCopyWith<ListModelsQueryParameters> get copyWith =>
      _$ListModelsQueryParametersCopyWithImpl<ListModelsQueryParameters>(
          this as ListModelsQueryParameters, _$identity);

  /// Serializes this ListModelsQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListModelsQueryParameters &&
            (identical(other.afterId, afterId) || other.afterId == afterId) &&
            (identical(other.beforeId, beforeId) ||
                other.beforeId == beforeId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, afterId, beforeId, limit);

  @override
  String toString() {
    return 'ListModelsQueryParameters(afterId: $afterId, beforeId: $beforeId, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $ListModelsQueryParametersCopyWith<$Res> {
  factory $ListModelsQueryParametersCopyWith(ListModelsQueryParameters value,
          $Res Function(ListModelsQueryParameters) _then) =
      _$ListModelsQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'after_id') String? afterId,
      @JsonKey(name: 'before_id') String? beforeId,
      int? limit});
}

/// @nodoc
class _$ListModelsQueryParametersCopyWithImpl<$Res>
    implements $ListModelsQueryParametersCopyWith<$Res> {
  _$ListModelsQueryParametersCopyWithImpl(this._self, this._then);

  final ListModelsQueryParameters _self;
  final $Res Function(ListModelsQueryParameters) _then;

  /// Create a copy of ListModelsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? afterId = freezed,
    Object? beforeId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_self.copyWith(
      afterId: freezed == afterId
          ? _self.afterId
          : afterId // ignore: cast_nullable_to_non_nullable
              as String?,
      beforeId: freezed == beforeId
          ? _self.beforeId
          : beforeId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ListModelsQueryParameters].
extension ListModelsQueryParametersPatterns on ListModelsQueryParameters {
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
    TResult Function(_ListModelsQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters() when $default != null:
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
    TResult Function(_ListModelsQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters():
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
    TResult? Function(_ListModelsQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters() when $default != null:
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
    TResult Function(@JsonKey(name: 'after_id') String? afterId,
            @JsonKey(name: 'before_id') String? beforeId, int? limit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters() when $default != null:
        return $default(_that.afterId, _that.beforeId, _that.limit);
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
    TResult Function(@JsonKey(name: 'after_id') String? afterId,
            @JsonKey(name: 'before_id') String? beforeId, int? limit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters():
        return $default(_that.afterId, _that.beforeId, _that.limit);
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
    TResult? Function(@JsonKey(name: 'after_id') String? afterId,
            @JsonKey(name: 'before_id') String? beforeId, int? limit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListModelsQueryParameters() when $default != null:
        return $default(_that.afterId, _that.beforeId, _that.limit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ListModelsQueryParameters extends ListModelsQueryParameters {
  _ListModelsQueryParameters(
      {@JsonKey(name: 'after_id') this.afterId,
      @JsonKey(name: 'before_id') this.beforeId,
      this.limit})
      : super._();
  factory _ListModelsQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$ListModelsQueryParametersFromJson(json);

  @override
  @JsonKey(name: 'after_id')
  final String? afterId;
  @override
  @JsonKey(name: 'before_id')
  final String? beforeId;
  @override
  final int? limit;

  /// Create a copy of ListModelsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListModelsQueryParametersCopyWith<_ListModelsQueryParameters>
      get copyWith =>
          __$ListModelsQueryParametersCopyWithImpl<_ListModelsQueryParameters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListModelsQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListModelsQueryParameters &&
            (identical(other.afterId, afterId) || other.afterId == afterId) &&
            (identical(other.beforeId, beforeId) ||
                other.beforeId == beforeId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, afterId, beforeId, limit);

  @override
  String toString() {
    return 'ListModelsQueryParameters(afterId: $afterId, beforeId: $beforeId, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$ListModelsQueryParametersCopyWith<$Res>
    implements $ListModelsQueryParametersCopyWith<$Res> {
  factory _$ListModelsQueryParametersCopyWith(_ListModelsQueryParameters value,
          $Res Function(_ListModelsQueryParameters) _then) =
      __$ListModelsQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'after_id') String? afterId,
      @JsonKey(name: 'before_id') String? beforeId,
      int? limit});
}

/// @nodoc
class __$ListModelsQueryParametersCopyWithImpl<$Res>
    implements _$ListModelsQueryParametersCopyWith<$Res> {
  __$ListModelsQueryParametersCopyWithImpl(this._self, this._then);

  final _ListModelsQueryParameters _self;
  final $Res Function(_ListModelsQueryParameters) _then;

  /// Create a copy of ListModelsQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? afterId = freezed,
    Object? beforeId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_ListModelsQueryParameters(
      afterId: freezed == afterId
          ? _self.afterId
          : afterId // ignore: cast_nullable_to_non_nullable
              as String?,
      beforeId: freezed == beforeId
          ? _self.beforeId
          : beforeId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
