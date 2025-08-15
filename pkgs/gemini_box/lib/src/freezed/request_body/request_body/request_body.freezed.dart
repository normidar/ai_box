// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestBody {
  List<Content> get contents;
  List<Tool>? get tools;
  ToolConfig? get toolConfig;
  List<SafetySetting>? get safetySettings;
  Content? get systemInstruction;
  GenerationConfig? get generationConfig;
  String? get cachedContent;

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestBodyCopyWith<RequestBody> get copyWith =>
      _$RequestBodyCopyWithImpl<RequestBody>(this as RequestBody, _$identity);

  /// Serializes this RequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestBody &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.tools, tools) &&
            (identical(other.toolConfig, toolConfig) ||
                other.toolConfig == toolConfig) &&
            const DeepCollectionEquality()
                .equals(other.safetySettings, safetySettings) &&
            (identical(other.systemInstruction, systemInstruction) ||
                other.systemInstruction == systemInstruction) &&
            (identical(other.generationConfig, generationConfig) ||
                other.generationConfig == generationConfig) &&
            (identical(other.cachedContent, cachedContent) ||
                other.cachedContent == cachedContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(tools),
      toolConfig,
      const DeepCollectionEquality().hash(safetySettings),
      systemInstruction,
      generationConfig,
      cachedContent);

  @override
  String toString() {
    return 'RequestBody(contents: $contents, tools: $tools, toolConfig: $toolConfig, safetySettings: $safetySettings, systemInstruction: $systemInstruction, generationConfig: $generationConfig, cachedContent: $cachedContent)';
  }
}

/// @nodoc
abstract mixin class $RequestBodyCopyWith<$Res> {
  factory $RequestBodyCopyWith(
          RequestBody value, $Res Function(RequestBody) _then) =
      _$RequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {List<Content> contents,
      List<Tool>? tools,
      ToolConfig? toolConfig,
      List<SafetySetting>? safetySettings,
      Content? systemInstruction,
      GenerationConfig? generationConfig,
      String? cachedContent});

  $ToolConfigCopyWith<$Res>? get toolConfig;
  $ContentCopyWith<$Res>? get systemInstruction;
  $GenerationConfigCopyWith<$Res>? get generationConfig;
}

/// @nodoc
class _$RequestBodyCopyWithImpl<$Res> implements $RequestBodyCopyWith<$Res> {
  _$RequestBodyCopyWithImpl(this._self, this._then);

  final RequestBody _self;
  final $Res Function(RequestBody) _then;

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? tools = freezed,
    Object? toolConfig = freezed,
    Object? safetySettings = freezed,
    Object? systemInstruction = freezed,
    Object? generationConfig = freezed,
    Object? cachedContent = freezed,
  }) {
    return _then(_self.copyWith(
      contents: null == contents
          ? _self.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      tools: freezed == tools
          ? _self.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolConfig: freezed == toolConfig
          ? _self.toolConfig
          : toolConfig // ignore: cast_nullable_to_non_nullable
              as ToolConfig?,
      safetySettings: freezed == safetySettings
          ? _self.safetySettings
          : safetySettings // ignore: cast_nullable_to_non_nullable
              as List<SafetySetting>?,
      systemInstruction: freezed == systemInstruction
          ? _self.systemInstruction
          : systemInstruction // ignore: cast_nullable_to_non_nullable
              as Content?,
      generationConfig: freezed == generationConfig
          ? _self.generationConfig
          : generationConfig // ignore: cast_nullable_to_non_nullable
              as GenerationConfig?,
      cachedContent: freezed == cachedContent
          ? _self.cachedContent
          : cachedContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToolConfigCopyWith<$Res>? get toolConfig {
    if (_self.toolConfig == null) {
      return null;
    }

    return $ToolConfigCopyWith<$Res>(_self.toolConfig!, (value) {
      return _then(_self.copyWith(toolConfig: value));
    });
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get systemInstruction {
    if (_self.systemInstruction == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.systemInstruction!, (value) {
      return _then(_self.copyWith(systemInstruction: value));
    });
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerationConfigCopyWith<$Res>? get generationConfig {
    if (_self.generationConfig == null) {
      return null;
    }

    return $GenerationConfigCopyWith<$Res>(_self.generationConfig!, (value) {
      return _then(_self.copyWith(generationConfig: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RequestBody extends RequestBody {
  _RequestBody(
      {required final List<Content> contents,
      final List<Tool>? tools,
      this.toolConfig,
      final List<SafetySetting>? safetySettings,
      this.systemInstruction,
      this.generationConfig,
      this.cachedContent})
      : _contents = contents,
        _tools = tools,
        _safetySettings = safetySettings,
        super._();
  factory _RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);

  final List<Content> _contents;
  @override
  List<Content> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  final List<Tool>? _tools;
  @override
  List<Tool>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ToolConfig? toolConfig;
  final List<SafetySetting>? _safetySettings;
  @override
  List<SafetySetting>? get safetySettings {
    final value = _safetySettings;
    if (value == null) return null;
    if (_safetySettings is EqualUnmodifiableListView) return _safetySettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Content? systemInstruction;
  @override
  final GenerationConfig? generationConfig;
  @override
  final String? cachedContent;

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequestBodyCopyWith<_RequestBody> get copyWith =>
      __$RequestBodyCopyWithImpl<_RequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestBody &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.toolConfig, toolConfig) ||
                other.toolConfig == toolConfig) &&
            const DeepCollectionEquality()
                .equals(other._safetySettings, _safetySettings) &&
            (identical(other.systemInstruction, systemInstruction) ||
                other.systemInstruction == systemInstruction) &&
            (identical(other.generationConfig, generationConfig) ||
                other.generationConfig == generationConfig) &&
            (identical(other.cachedContent, cachedContent) ||
                other.cachedContent == cachedContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      const DeepCollectionEquality().hash(_tools),
      toolConfig,
      const DeepCollectionEquality().hash(_safetySettings),
      systemInstruction,
      generationConfig,
      cachedContent);

  @override
  String toString() {
    return 'RequestBody(contents: $contents, tools: $tools, toolConfig: $toolConfig, safetySettings: $safetySettings, systemInstruction: $systemInstruction, generationConfig: $generationConfig, cachedContent: $cachedContent)';
  }
}

/// @nodoc
abstract mixin class _$RequestBodyCopyWith<$Res>
    implements $RequestBodyCopyWith<$Res> {
  factory _$RequestBodyCopyWith(
          _RequestBody value, $Res Function(_RequestBody) _then) =
      __$RequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Content> contents,
      List<Tool>? tools,
      ToolConfig? toolConfig,
      List<SafetySetting>? safetySettings,
      Content? systemInstruction,
      GenerationConfig? generationConfig,
      String? cachedContent});

  @override
  $ToolConfigCopyWith<$Res>? get toolConfig;
  @override
  $ContentCopyWith<$Res>? get systemInstruction;
  @override
  $GenerationConfigCopyWith<$Res>? get generationConfig;
}

/// @nodoc
class __$RequestBodyCopyWithImpl<$Res> implements _$RequestBodyCopyWith<$Res> {
  __$RequestBodyCopyWithImpl(this._self, this._then);

  final _RequestBody _self;
  final $Res Function(_RequestBody) _then;

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contents = null,
    Object? tools = freezed,
    Object? toolConfig = freezed,
    Object? safetySettings = freezed,
    Object? systemInstruction = freezed,
    Object? generationConfig = freezed,
    Object? cachedContent = freezed,
  }) {
    return _then(_RequestBody(
      contents: null == contents
          ? _self._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      tools: freezed == tools
          ? _self._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolConfig: freezed == toolConfig
          ? _self.toolConfig
          : toolConfig // ignore: cast_nullable_to_non_nullable
              as ToolConfig?,
      safetySettings: freezed == safetySettings
          ? _self._safetySettings
          : safetySettings // ignore: cast_nullable_to_non_nullable
              as List<SafetySetting>?,
      systemInstruction: freezed == systemInstruction
          ? _self.systemInstruction
          : systemInstruction // ignore: cast_nullable_to_non_nullable
              as Content?,
      generationConfig: freezed == generationConfig
          ? _self.generationConfig
          : generationConfig // ignore: cast_nullable_to_non_nullable
              as GenerationConfig?,
      cachedContent: freezed == cachedContent
          ? _self.cachedContent
          : cachedContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToolConfigCopyWith<$Res>? get toolConfig {
    if (_self.toolConfig == null) {
      return null;
    }

    return $ToolConfigCopyWith<$Res>(_self.toolConfig!, (value) {
      return _then(_self.copyWith(toolConfig: value));
    });
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get systemInstruction {
    if (_self.systemInstruction == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.systemInstruction!, (value) {
      return _then(_self.copyWith(systemInstruction: value));
    });
  }

  /// Create a copy of RequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerationConfigCopyWith<$Res>? get generationConfig {
    if (_self.generationConfig == null) {
      return null;
    }

    return $GenerationConfigCopyWith<$Res>(_self.generationConfig!, (value) {
      return _then(_self.copyWith(generationConfig: value));
    });
  }
}

// dart format on
