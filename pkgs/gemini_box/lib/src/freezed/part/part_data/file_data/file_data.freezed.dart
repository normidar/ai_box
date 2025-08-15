// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileData {
  String get fileUri;
  @JsonKey(name: 'mime_type')
  String? get mimeType;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileDataCopyWith<FileData> get copyWith =>
      _$FileDataCopyWithImpl<FileData>(this as FileData, _$identity);

  /// Serializes this FileData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileData &&
            (identical(other.fileUri, fileUri) || other.fileUri == fileUri) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUri, mimeType);

  @override
  String toString() {
    return 'FileData(fileUri: $fileUri, mimeType: $mimeType)';
  }
}

/// @nodoc
abstract mixin class $FileDataCopyWith<$Res> {
  factory $FileDataCopyWith(FileData value, $Res Function(FileData) _then) =
      _$FileDataCopyWithImpl;
  @useResult
  $Res call({String fileUri, @JsonKey(name: 'mime_type') String? mimeType});
}

/// @nodoc
class _$FileDataCopyWithImpl<$Res> implements $FileDataCopyWith<$Res> {
  _$FileDataCopyWithImpl(this._self, this._then);

  final FileData _self;
  final $Res Function(FileData) _then;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUri = null,
    Object? mimeType = freezed,
  }) {
    return _then(_self.copyWith(
      fileUri: null == fileUri
          ? _self.fileUri
          : fileUri // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: freezed == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FileData extends FileData {
  _FileData({required this.fileUri, @JsonKey(name: 'mime_type') this.mimeType})
      : super._();
  factory _FileData.fromJson(Map<String, dynamic> json) =>
      _$FileDataFromJson(json);

  @override
  final String fileUri;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileDataCopyWith<_FileData> get copyWith =>
      __$FileDataCopyWithImpl<_FileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileData &&
            (identical(other.fileUri, fileUri) || other.fileUri == fileUri) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUri, mimeType);

  @override
  String toString() {
    return 'FileData(fileUri: $fileUri, mimeType: $mimeType)';
  }
}

/// @nodoc
abstract mixin class _$FileDataCopyWith<$Res>
    implements $FileDataCopyWith<$Res> {
  factory _$FileDataCopyWith(_FileData value, $Res Function(_FileData) _then) =
      __$FileDataCopyWithImpl;
  @override
  @useResult
  $Res call({String fileUri, @JsonKey(name: 'mime_type') String? mimeType});
}

/// @nodoc
class __$FileDataCopyWithImpl<$Res> implements _$FileDataCopyWith<$Res> {
  __$FileDataCopyWithImpl(this._self, this._then);

  final _FileData _self;
  final $Res Function(_FileData) _then;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileUri = null,
    Object? mimeType = freezed,
  }) {
    return _then(_FileData(
      fileUri: null == fileUri
          ? _self.fileUri
          : fileUri // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: freezed == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
