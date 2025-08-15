// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blob.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Blob {
  @JsonKey(name: 'mime_type')
  String get mimeType;
  String get data;

  /// Create a copy of Blob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlobCopyWith<Blob> get copyWith =>
      _$BlobCopyWithImpl<Blob>(this as Blob, _$identity);

  /// Serializes this Blob to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Blob &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mimeType, data);

  @override
  String toString() {
    return 'Blob(mimeType: $mimeType, data: $data)';
  }
}

/// @nodoc
abstract mixin class $BlobCopyWith<$Res> {
  factory $BlobCopyWith(Blob value, $Res Function(Blob) _then) =
      _$BlobCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'mime_type') String mimeType, String data});
}

/// @nodoc
class _$BlobCopyWithImpl<$Res> implements $BlobCopyWith<$Res> {
  _$BlobCopyWithImpl(this._self, this._then);

  final Blob _self;
  final $Res Function(Blob) _then;

  /// Create a copy of Blob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mimeType = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Blob extends Blob {
  _Blob(
      {@JsonKey(name: 'mime_type') required this.mimeType, required this.data})
      : super._();
  factory _Blob.fromJson(Map<String, dynamic> json) => _$BlobFromJson(json);

  @override
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @override
  final String data;

  /// Create a copy of Blob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlobCopyWith<_Blob> get copyWith =>
      __$BlobCopyWithImpl<_Blob>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlobToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Blob &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mimeType, data);

  @override
  String toString() {
    return 'Blob(mimeType: $mimeType, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$BlobCopyWith<$Res> implements $BlobCopyWith<$Res> {
  factory _$BlobCopyWith(_Blob value, $Res Function(_Blob) _then) =
      __$BlobCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mime_type') String mimeType, String data});
}

/// @nodoc
class __$BlobCopyWithImpl<$Res> implements _$BlobCopyWith<$Res> {
  __$BlobCopyWithImpl(this._self, this._then);

  final _Blob _self;
  final $Res Function(_Blob) _then;

  /// Create a copy of Blob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mimeType = null,
    Object? data = null,
  }) {
    return _then(_Blob(
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
