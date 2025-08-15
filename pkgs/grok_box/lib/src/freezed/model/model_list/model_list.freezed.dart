// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelList {
  String get object;
  List<Model> get data;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelListCopyWith<ModelList> get copyWith =>
      _$ModelListCopyWithImpl<ModelList>(this as ModelList, _$identity);

  /// Serializes this ModelList to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelList &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, object, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ModelList(object: $object, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ModelListCopyWith<$Res> {
  factory $ModelListCopyWith(ModelList value, $Res Function(ModelList) _then) =
      _$ModelListCopyWithImpl;
  @useResult
  $Res call({String object, List<Model> data});
}

/// @nodoc
class _$ModelListCopyWithImpl<$Res> implements $ModelListCopyWith<$Res> {
  _$ModelListCopyWithImpl(this._self, this._then);

  final ModelList _self;
  final $Res Function(ModelList) _then;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Model>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModelList extends ModelList {
  _ModelList({required this.object, required final List<Model> data})
      : _data = data,
        super._();
  factory _ModelList.fromJson(Map<String, dynamic> json) =>
      _$ModelListFromJson(json);

  @override
  final String object;
  final List<Model> _data;
  @override
  List<Model> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelListCopyWith<_ModelList> get copyWith =>
      __$ModelListCopyWithImpl<_ModelList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelListToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelList &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, object, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ModelList(object: $object, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ModelListCopyWith<$Res>
    implements $ModelListCopyWith<$Res> {
  factory _$ModelListCopyWith(
          _ModelList value, $Res Function(_ModelList) _then) =
      __$ModelListCopyWithImpl;
  @override
  @useResult
  $Res call({String object, List<Model> data});
}

/// @nodoc
class __$ModelListCopyWithImpl<$Res> implements _$ModelListCopyWith<$Res> {
  __$ModelListCopyWithImpl(this._self, this._then);

  final _ModelList _self;
  final $Res Function(_ModelList) _then;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? object = null,
    Object? data = null,
  }) {
    return _then(_ModelList(
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Model>,
    ));
  }
}

// dart format on
