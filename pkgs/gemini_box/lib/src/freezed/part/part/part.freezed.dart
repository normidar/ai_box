// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Part {
  bool? get thought;
  String? get text;
  Blob? get inlineData;
  FunctionCall? get functionCall;
  FunctionResponse? get functionResponse;
  FileData? get fileData;
  ExecutableCode? get executableCode;
  CodeExecutionResult? get codeExecutionResult;
  VideoMetadata? get videoMetadata;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartCopyWith<Part> get copyWith =>
      _$PartCopyWithImpl<Part>(this as Part, _$identity);

  /// Serializes this Part to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Part &&
            (identical(other.thought, thought) || other.thought == thought) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.inlineData, inlineData) ||
                other.inlineData == inlineData) &&
            (identical(other.functionCall, functionCall) ||
                other.functionCall == functionCall) &&
            (identical(other.functionResponse, functionResponse) ||
                other.functionResponse == functionResponse) &&
            (identical(other.fileData, fileData) ||
                other.fileData == fileData) &&
            (identical(other.executableCode, executableCode) ||
                other.executableCode == executableCode) &&
            (identical(other.codeExecutionResult, codeExecutionResult) ||
                other.codeExecutionResult == codeExecutionResult) &&
            (identical(other.videoMetadata, videoMetadata) ||
                other.videoMetadata == videoMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thought,
      text,
      inlineData,
      functionCall,
      functionResponse,
      fileData,
      executableCode,
      codeExecutionResult,
      videoMetadata);

  @override
  String toString() {
    return 'Part(thought: $thought, text: $text, inlineData: $inlineData, functionCall: $functionCall, functionResponse: $functionResponse, fileData: $fileData, executableCode: $executableCode, codeExecutionResult: $codeExecutionResult, videoMetadata: $videoMetadata)';
  }
}

/// @nodoc
abstract mixin class $PartCopyWith<$Res> {
  factory $PartCopyWith(Part value, $Res Function(Part) _then) =
      _$PartCopyWithImpl;
  @useResult
  $Res call(
      {bool? thought,
      String? text,
      Blob? inlineData,
      FunctionCall? functionCall,
      FunctionResponse? functionResponse,
      FileData? fileData,
      ExecutableCode? executableCode,
      CodeExecutionResult? codeExecutionResult,
      VideoMetadata? videoMetadata});

  $BlobCopyWith<$Res>? get inlineData;
  $FunctionCallCopyWith<$Res>? get functionCall;
  $FunctionResponseCopyWith<$Res>? get functionResponse;
  $FileDataCopyWith<$Res>? get fileData;
  $ExecutableCodeCopyWith<$Res>? get executableCode;
  $CodeExecutionResultCopyWith<$Res>? get codeExecutionResult;
  $VideoMetadataCopyWith<$Res>? get videoMetadata;
}

/// @nodoc
class _$PartCopyWithImpl<$Res> implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._self, this._then);

  final Part _self;
  final $Res Function(Part) _then;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thought = freezed,
    Object? text = freezed,
    Object? inlineData = freezed,
    Object? functionCall = freezed,
    Object? functionResponse = freezed,
    Object? fileData = freezed,
    Object? executableCode = freezed,
    Object? codeExecutionResult = freezed,
    Object? videoMetadata = freezed,
  }) {
    return _then(_self.copyWith(
      thought: freezed == thought
          ? _self.thought
          : thought // ignore: cast_nullable_to_non_nullable
              as bool?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      inlineData: freezed == inlineData
          ? _self.inlineData
          : inlineData // ignore: cast_nullable_to_non_nullable
              as Blob?,
      functionCall: freezed == functionCall
          ? _self.functionCall
          : functionCall // ignore: cast_nullable_to_non_nullable
              as FunctionCall?,
      functionResponse: freezed == functionResponse
          ? _self.functionResponse
          : functionResponse // ignore: cast_nullable_to_non_nullable
              as FunctionResponse?,
      fileData: freezed == fileData
          ? _self.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as FileData?,
      executableCode: freezed == executableCode
          ? _self.executableCode
          : executableCode // ignore: cast_nullable_to_non_nullable
              as ExecutableCode?,
      codeExecutionResult: freezed == codeExecutionResult
          ? _self.codeExecutionResult
          : codeExecutionResult // ignore: cast_nullable_to_non_nullable
              as CodeExecutionResult?,
      videoMetadata: freezed == videoMetadata
          ? _self.videoMetadata
          : videoMetadata // ignore: cast_nullable_to_non_nullable
              as VideoMetadata?,
    ));
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlobCopyWith<$Res>? get inlineData {
    if (_self.inlineData == null) {
      return null;
    }

    return $BlobCopyWith<$Res>(_self.inlineData!, (value) {
      return _then(_self.copyWith(inlineData: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionCallCopyWith<$Res>? get functionCall {
    if (_self.functionCall == null) {
      return null;
    }

    return $FunctionCallCopyWith<$Res>(_self.functionCall!, (value) {
      return _then(_self.copyWith(functionCall: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionResponseCopyWith<$Res>? get functionResponse {
    if (_self.functionResponse == null) {
      return null;
    }

    return $FunctionResponseCopyWith<$Res>(_self.functionResponse!, (value) {
      return _then(_self.copyWith(functionResponse: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileDataCopyWith<$Res>? get fileData {
    if (_self.fileData == null) {
      return null;
    }

    return $FileDataCopyWith<$Res>(_self.fileData!, (value) {
      return _then(_self.copyWith(fileData: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExecutableCodeCopyWith<$Res>? get executableCode {
    if (_self.executableCode == null) {
      return null;
    }

    return $ExecutableCodeCopyWith<$Res>(_self.executableCode!, (value) {
      return _then(_self.copyWith(executableCode: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeExecutionResultCopyWith<$Res>? get codeExecutionResult {
    if (_self.codeExecutionResult == null) {
      return null;
    }

    return $CodeExecutionResultCopyWith<$Res>(_self.codeExecutionResult!,
        (value) {
      return _then(_self.copyWith(codeExecutionResult: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoMetadataCopyWith<$Res>? get videoMetadata {
    if (_self.videoMetadata == null) {
      return null;
    }

    return $VideoMetadataCopyWith<$Res>(_self.videoMetadata!, (value) {
      return _then(_self.copyWith(videoMetadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Part extends Part {
  _Part(
      {this.thought,
      this.text,
      this.inlineData,
      this.functionCall,
      this.functionResponse,
      this.fileData,
      this.executableCode,
      this.codeExecutionResult,
      this.videoMetadata})
      : super._();
  factory _Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);

  @override
  final bool? thought;
  @override
  final String? text;
  @override
  final Blob? inlineData;
  @override
  final FunctionCall? functionCall;
  @override
  final FunctionResponse? functionResponse;
  @override
  final FileData? fileData;
  @override
  final ExecutableCode? executableCode;
  @override
  final CodeExecutionResult? codeExecutionResult;
  @override
  final VideoMetadata? videoMetadata;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PartCopyWith<_Part> get copyWith =>
      __$PartCopyWithImpl<_Part>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Part &&
            (identical(other.thought, thought) || other.thought == thought) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.inlineData, inlineData) ||
                other.inlineData == inlineData) &&
            (identical(other.functionCall, functionCall) ||
                other.functionCall == functionCall) &&
            (identical(other.functionResponse, functionResponse) ||
                other.functionResponse == functionResponse) &&
            (identical(other.fileData, fileData) ||
                other.fileData == fileData) &&
            (identical(other.executableCode, executableCode) ||
                other.executableCode == executableCode) &&
            (identical(other.codeExecutionResult, codeExecutionResult) ||
                other.codeExecutionResult == codeExecutionResult) &&
            (identical(other.videoMetadata, videoMetadata) ||
                other.videoMetadata == videoMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thought,
      text,
      inlineData,
      functionCall,
      functionResponse,
      fileData,
      executableCode,
      codeExecutionResult,
      videoMetadata);

  @override
  String toString() {
    return 'Part(thought: $thought, text: $text, inlineData: $inlineData, functionCall: $functionCall, functionResponse: $functionResponse, fileData: $fileData, executableCode: $executableCode, codeExecutionResult: $codeExecutionResult, videoMetadata: $videoMetadata)';
  }
}

/// @nodoc
abstract mixin class _$PartCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$PartCopyWith(_Part value, $Res Function(_Part) _then) =
      __$PartCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? thought,
      String? text,
      Blob? inlineData,
      FunctionCall? functionCall,
      FunctionResponse? functionResponse,
      FileData? fileData,
      ExecutableCode? executableCode,
      CodeExecutionResult? codeExecutionResult,
      VideoMetadata? videoMetadata});

  @override
  $BlobCopyWith<$Res>? get inlineData;
  @override
  $FunctionCallCopyWith<$Res>? get functionCall;
  @override
  $FunctionResponseCopyWith<$Res>? get functionResponse;
  @override
  $FileDataCopyWith<$Res>? get fileData;
  @override
  $ExecutableCodeCopyWith<$Res>? get executableCode;
  @override
  $CodeExecutionResultCopyWith<$Res>? get codeExecutionResult;
  @override
  $VideoMetadataCopyWith<$Res>? get videoMetadata;
}

/// @nodoc
class __$PartCopyWithImpl<$Res> implements _$PartCopyWith<$Res> {
  __$PartCopyWithImpl(this._self, this._then);

  final _Part _self;
  final $Res Function(_Part) _then;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thought = freezed,
    Object? text = freezed,
    Object? inlineData = freezed,
    Object? functionCall = freezed,
    Object? functionResponse = freezed,
    Object? fileData = freezed,
    Object? executableCode = freezed,
    Object? codeExecutionResult = freezed,
    Object? videoMetadata = freezed,
  }) {
    return _then(_Part(
      thought: freezed == thought
          ? _self.thought
          : thought // ignore: cast_nullable_to_non_nullable
              as bool?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      inlineData: freezed == inlineData
          ? _self.inlineData
          : inlineData // ignore: cast_nullable_to_non_nullable
              as Blob?,
      functionCall: freezed == functionCall
          ? _self.functionCall
          : functionCall // ignore: cast_nullable_to_non_nullable
              as FunctionCall?,
      functionResponse: freezed == functionResponse
          ? _self.functionResponse
          : functionResponse // ignore: cast_nullable_to_non_nullable
              as FunctionResponse?,
      fileData: freezed == fileData
          ? _self.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as FileData?,
      executableCode: freezed == executableCode
          ? _self.executableCode
          : executableCode // ignore: cast_nullable_to_non_nullable
              as ExecutableCode?,
      codeExecutionResult: freezed == codeExecutionResult
          ? _self.codeExecutionResult
          : codeExecutionResult // ignore: cast_nullable_to_non_nullable
              as CodeExecutionResult?,
      videoMetadata: freezed == videoMetadata
          ? _self.videoMetadata
          : videoMetadata // ignore: cast_nullable_to_non_nullable
              as VideoMetadata?,
    ));
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlobCopyWith<$Res>? get inlineData {
    if (_self.inlineData == null) {
      return null;
    }

    return $BlobCopyWith<$Res>(_self.inlineData!, (value) {
      return _then(_self.copyWith(inlineData: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionCallCopyWith<$Res>? get functionCall {
    if (_self.functionCall == null) {
      return null;
    }

    return $FunctionCallCopyWith<$Res>(_self.functionCall!, (value) {
      return _then(_self.copyWith(functionCall: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionResponseCopyWith<$Res>? get functionResponse {
    if (_self.functionResponse == null) {
      return null;
    }

    return $FunctionResponseCopyWith<$Res>(_self.functionResponse!, (value) {
      return _then(_self.copyWith(functionResponse: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileDataCopyWith<$Res>? get fileData {
    if (_self.fileData == null) {
      return null;
    }

    return $FileDataCopyWith<$Res>(_self.fileData!, (value) {
      return _then(_self.copyWith(fileData: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExecutableCodeCopyWith<$Res>? get executableCode {
    if (_self.executableCode == null) {
      return null;
    }

    return $ExecutableCodeCopyWith<$Res>(_self.executableCode!, (value) {
      return _then(_self.copyWith(executableCode: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeExecutionResultCopyWith<$Res>? get codeExecutionResult {
    if (_self.codeExecutionResult == null) {
      return null;
    }

    return $CodeExecutionResultCopyWith<$Res>(_self.codeExecutionResult!,
        (value) {
      return _then(_self.copyWith(codeExecutionResult: value));
    });
  }

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoMetadataCopyWith<$Res>? get videoMetadata {
    if (_self.videoMetadata == null) {
      return null;
    }

    return $VideoMetadataCopyWith<$Res>(_self.videoMetadata!, (value) {
      return _then(_self.copyWith(videoMetadata: value));
    });
  }
}

// dart format on
