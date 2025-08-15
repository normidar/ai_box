// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_models_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListModelsResponse {
  @JsonKey(name: 'data')
  List<ModelInfo> get data;
  @JsonKey(name: 'has_more')
  bool get hasMore;
  @JsonKey(name: 'first_id')
  String get firstId;
  @JsonKey(name: 'last_id')
  String get lastId;

  /// Create a copy of ListModelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListModelsResponseCopyWith<ListModelsResponse> get copyWith =>
      _$ListModelsResponseCopyWithImpl<ListModelsResponse>(
          this as ListModelsResponse, _$identity);

  /// Serializes this ListModelsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListModelsResponse &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.lastId, lastId) || other.lastId == lastId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), hasMore, firstId, lastId);

  @override
  String toString() {
    return 'ListModelsResponse(data: $data, hasMore: $hasMore, firstId: $firstId, lastId: $lastId)';
  }
}

/// @nodoc
abstract mixin class $ListModelsResponseCopyWith<$Res> {
  factory $ListModelsResponseCopyWith(
          ListModelsResponse value, $Res Function(ListModelsResponse) _then) =
      _$ListModelsResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<ModelInfo> data,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'first_id') String firstId,
      @JsonKey(name: 'last_id') String lastId});
}

/// @nodoc
class _$ListModelsResponseCopyWithImpl<$Res>
    implements $ListModelsResponseCopyWith<$Res> {
  _$ListModelsResponseCopyWithImpl(this._self, this._then);

  final ListModelsResponse _self;
  final $Res Function(ListModelsResponse) _then;

  /// Create a copy of ListModelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hasMore = null,
    Object? firstId = null,
    Object? lastId = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelInfo>,
      hasMore: null == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      firstId: null == firstId
          ? _self.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      lastId: null == lastId
          ? _self.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ListModelsResponse extends ListModelsResponse {
  _ListModelsResponse(
      {@JsonKey(name: 'data') required final List<ModelInfo> data,
      @JsonKey(name: 'has_more') required this.hasMore,
      @JsonKey(name: 'first_id') required this.firstId,
      @JsonKey(name: 'last_id') required this.lastId})
      : _data = data,
        super._();
  factory _ListModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListModelsResponseFromJson(json);

  final List<ModelInfo> _data;
  @override
  @JsonKey(name: 'data')
  List<ModelInfo> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'has_more')
  final bool hasMore;
  @override
  @JsonKey(name: 'first_id')
  final String firstId;
  @override
  @JsonKey(name: 'last_id')
  final String lastId;

  /// Create a copy of ListModelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListModelsResponseCopyWith<_ListModelsResponse> get copyWith =>
      __$ListModelsResponseCopyWithImpl<_ListModelsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListModelsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListModelsResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.lastId, lastId) || other.lastId == lastId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), hasMore, firstId, lastId);

  @override
  String toString() {
    return 'ListModelsResponse(data: $data, hasMore: $hasMore, firstId: $firstId, lastId: $lastId)';
  }
}

/// @nodoc
abstract mixin class _$ListModelsResponseCopyWith<$Res>
    implements $ListModelsResponseCopyWith<$Res> {
  factory _$ListModelsResponseCopyWith(
          _ListModelsResponse value, $Res Function(_ListModelsResponse) _then) =
      __$ListModelsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<ModelInfo> data,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'first_id') String firstId,
      @JsonKey(name: 'last_id') String lastId});
}

/// @nodoc
class __$ListModelsResponseCopyWithImpl<$Res>
    implements _$ListModelsResponseCopyWith<$Res> {
  __$ListModelsResponseCopyWithImpl(this._self, this._then);

  final _ListModelsResponse _self;
  final $Res Function(_ListModelsResponse) _then;

  /// Create a copy of ListModelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? hasMore = null,
    Object? firstId = null,
    Object? lastId = null,
  }) {
    return _then(_ListModelsResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelInfo>,
      hasMore: null == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      firstId: null == firstId
          ? _self.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      lastId: null == lastId
          ? _self.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
