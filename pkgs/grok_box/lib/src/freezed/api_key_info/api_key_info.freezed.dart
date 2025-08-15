// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_key_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiKeyInfo {
  /// A list of ACLs authorized with the API key
  List<String> get acls;

  /// Indicates whether the API key is blocked
  @JsonKey(name: 'api_key_blocked')
  bool get apiKeyBlocked;

  /// Indicates whether the API key is disabled
  @JsonKey(name: 'api_key_disabled')
  bool get apiKeyDisabled;

  /// ID of the API key
  @JsonKey(name: 'api_key_id')
  String get apiKeyId;

  /// Creation time of the API key in Unix timestamp
  @JsonKey(name: 'create_time')
  String get createTime;

  /// User ID of the user who last modified the API key
  @JsonKey(name: 'modified_by')
  String get modifiedBy;

  /// Last modification time of the API key in Unix timestamp
  @JsonKey(name: 'modify_time')
  String get modifyTime;

  /// The name of the API key specified by user
  String get name;

  /// The redacted API key
  @JsonKey(name: 'redacted_api_key')
  String get redactedApiKey;

  /// Indicates whether the team that owns the API key is blocked
  @JsonKey(name: 'team_blocked')
  bool get teamBlocked;

  /// The team ID of the team that owns the API key
  @JsonKey(name: 'team_id')
  String get teamId;

  /// User ID the API key belongs to
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of ApiKeyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiKeyInfoCopyWith<ApiKeyInfo> get copyWith =>
      _$ApiKeyInfoCopyWithImpl<ApiKeyInfo>(this as ApiKeyInfo, _$identity);

  /// Serializes this ApiKeyInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiKeyInfo &&
            const DeepCollectionEquality().equals(other.acls, acls) &&
            (identical(other.apiKeyBlocked, apiKeyBlocked) ||
                other.apiKeyBlocked == apiKeyBlocked) &&
            (identical(other.apiKeyDisabled, apiKeyDisabled) ||
                other.apiKeyDisabled == apiKeyDisabled) &&
            (identical(other.apiKeyId, apiKeyId) ||
                other.apiKeyId == apiKeyId) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.modifyTime, modifyTime) ||
                other.modifyTime == modifyTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.redactedApiKey, redactedApiKey) ||
                other.redactedApiKey == redactedApiKey) &&
            (identical(other.teamBlocked, teamBlocked) ||
                other.teamBlocked == teamBlocked) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(acls),
      apiKeyBlocked,
      apiKeyDisabled,
      apiKeyId,
      createTime,
      modifiedBy,
      modifyTime,
      name,
      redactedApiKey,
      teamBlocked,
      teamId,
      userId);

  @override
  String toString() {
    return 'ApiKeyInfo(acls: $acls, apiKeyBlocked: $apiKeyBlocked, apiKeyDisabled: $apiKeyDisabled, apiKeyId: $apiKeyId, createTime: $createTime, modifiedBy: $modifiedBy, modifyTime: $modifyTime, name: $name, redactedApiKey: $redactedApiKey, teamBlocked: $teamBlocked, teamId: $teamId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $ApiKeyInfoCopyWith<$Res> {
  factory $ApiKeyInfoCopyWith(
          ApiKeyInfo value, $Res Function(ApiKeyInfo) _then) =
      _$ApiKeyInfoCopyWithImpl;
  @useResult
  $Res call(
      {List<String> acls,
      @JsonKey(name: 'api_key_blocked') bool apiKeyBlocked,
      @JsonKey(name: 'api_key_disabled') bool apiKeyDisabled,
      @JsonKey(name: 'api_key_id') String apiKeyId,
      @JsonKey(name: 'create_time') String createTime,
      @JsonKey(name: 'modified_by') String modifiedBy,
      @JsonKey(name: 'modify_time') String modifyTime,
      String name,
      @JsonKey(name: 'redacted_api_key') String redactedApiKey,
      @JsonKey(name: 'team_blocked') bool teamBlocked,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$ApiKeyInfoCopyWithImpl<$Res> implements $ApiKeyInfoCopyWith<$Res> {
  _$ApiKeyInfoCopyWithImpl(this._self, this._then);

  final ApiKeyInfo _self;
  final $Res Function(ApiKeyInfo) _then;

  /// Create a copy of ApiKeyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acls = null,
    Object? apiKeyBlocked = null,
    Object? apiKeyDisabled = null,
    Object? apiKeyId = null,
    Object? createTime = null,
    Object? modifiedBy = null,
    Object? modifyTime = null,
    Object? name = null,
    Object? redactedApiKey = null,
    Object? teamBlocked = null,
    Object? teamId = null,
    Object? userId = null,
  }) {
    return _then(_self.copyWith(
      acls: null == acls
          ? _self.acls
          : acls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiKeyBlocked: null == apiKeyBlocked
          ? _self.apiKeyBlocked
          : apiKeyBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKeyDisabled: null == apiKeyDisabled
          ? _self.apiKeyDisabled
          : apiKeyDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKeyId: null == apiKeyId
          ? _self.apiKeyId
          : apiKeyId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedBy: null == modifiedBy
          ? _self.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String,
      modifyTime: null == modifyTime
          ? _self.modifyTime
          : modifyTime // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      redactedApiKey: null == redactedApiKey
          ? _self.redactedApiKey
          : redactedApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      teamBlocked: null == teamBlocked
          ? _self.teamBlocked
          : teamBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      teamId: null == teamId
          ? _self.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ApiKeyInfo extends ApiKeyInfo {
  _ApiKeyInfo(
      {required final List<String> acls,
      @JsonKey(name: 'api_key_blocked') required this.apiKeyBlocked,
      @JsonKey(name: 'api_key_disabled') required this.apiKeyDisabled,
      @JsonKey(name: 'api_key_id') required this.apiKeyId,
      @JsonKey(name: 'create_time') required this.createTime,
      @JsonKey(name: 'modified_by') required this.modifiedBy,
      @JsonKey(name: 'modify_time') required this.modifyTime,
      required this.name,
      @JsonKey(name: 'redacted_api_key') required this.redactedApiKey,
      @JsonKey(name: 'team_blocked') required this.teamBlocked,
      @JsonKey(name: 'team_id') required this.teamId,
      @JsonKey(name: 'user_id') required this.userId})
      : _acls = acls,
        super._();
  factory _ApiKeyInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyInfoFromJson(json);

  /// A list of ACLs authorized with the API key
  final List<String> _acls;

  /// A list of ACLs authorized with the API key
  @override
  List<String> get acls {
    if (_acls is EqualUnmodifiableListView) return _acls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acls);
  }

  /// Indicates whether the API key is blocked
  @override
  @JsonKey(name: 'api_key_blocked')
  final bool apiKeyBlocked;

  /// Indicates whether the API key is disabled
  @override
  @JsonKey(name: 'api_key_disabled')
  final bool apiKeyDisabled;

  /// ID of the API key
  @override
  @JsonKey(name: 'api_key_id')
  final String apiKeyId;

  /// Creation time of the API key in Unix timestamp
  @override
  @JsonKey(name: 'create_time')
  final String createTime;

  /// User ID of the user who last modified the API key
  @override
  @JsonKey(name: 'modified_by')
  final String modifiedBy;

  /// Last modification time of the API key in Unix timestamp
  @override
  @JsonKey(name: 'modify_time')
  final String modifyTime;

  /// The name of the API key specified by user
  @override
  final String name;

  /// The redacted API key
  @override
  @JsonKey(name: 'redacted_api_key')
  final String redactedApiKey;

  /// Indicates whether the team that owns the API key is blocked
  @override
  @JsonKey(name: 'team_blocked')
  final bool teamBlocked;

  /// The team ID of the team that owns the API key
  @override
  @JsonKey(name: 'team_id')
  final String teamId;

  /// User ID the API key belongs to
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Create a copy of ApiKeyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiKeyInfoCopyWith<_ApiKeyInfo> get copyWith =>
      __$ApiKeyInfoCopyWithImpl<_ApiKeyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiKeyInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiKeyInfo &&
            const DeepCollectionEquality().equals(other._acls, _acls) &&
            (identical(other.apiKeyBlocked, apiKeyBlocked) ||
                other.apiKeyBlocked == apiKeyBlocked) &&
            (identical(other.apiKeyDisabled, apiKeyDisabled) ||
                other.apiKeyDisabled == apiKeyDisabled) &&
            (identical(other.apiKeyId, apiKeyId) ||
                other.apiKeyId == apiKeyId) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.modifyTime, modifyTime) ||
                other.modifyTime == modifyTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.redactedApiKey, redactedApiKey) ||
                other.redactedApiKey == redactedApiKey) &&
            (identical(other.teamBlocked, teamBlocked) ||
                other.teamBlocked == teamBlocked) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_acls),
      apiKeyBlocked,
      apiKeyDisabled,
      apiKeyId,
      createTime,
      modifiedBy,
      modifyTime,
      name,
      redactedApiKey,
      teamBlocked,
      teamId,
      userId);

  @override
  String toString() {
    return 'ApiKeyInfo(acls: $acls, apiKeyBlocked: $apiKeyBlocked, apiKeyDisabled: $apiKeyDisabled, apiKeyId: $apiKeyId, createTime: $createTime, modifiedBy: $modifiedBy, modifyTime: $modifyTime, name: $name, redactedApiKey: $redactedApiKey, teamBlocked: $teamBlocked, teamId: $teamId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$ApiKeyInfoCopyWith<$Res>
    implements $ApiKeyInfoCopyWith<$Res> {
  factory _$ApiKeyInfoCopyWith(
          _ApiKeyInfo value, $Res Function(_ApiKeyInfo) _then) =
      __$ApiKeyInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> acls,
      @JsonKey(name: 'api_key_blocked') bool apiKeyBlocked,
      @JsonKey(name: 'api_key_disabled') bool apiKeyDisabled,
      @JsonKey(name: 'api_key_id') String apiKeyId,
      @JsonKey(name: 'create_time') String createTime,
      @JsonKey(name: 'modified_by') String modifiedBy,
      @JsonKey(name: 'modify_time') String modifyTime,
      String name,
      @JsonKey(name: 'redacted_api_key') String redactedApiKey,
      @JsonKey(name: 'team_blocked') bool teamBlocked,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$ApiKeyInfoCopyWithImpl<$Res> implements _$ApiKeyInfoCopyWith<$Res> {
  __$ApiKeyInfoCopyWithImpl(this._self, this._then);

  final _ApiKeyInfo _self;
  final $Res Function(_ApiKeyInfo) _then;

  /// Create a copy of ApiKeyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? acls = null,
    Object? apiKeyBlocked = null,
    Object? apiKeyDisabled = null,
    Object? apiKeyId = null,
    Object? createTime = null,
    Object? modifiedBy = null,
    Object? modifyTime = null,
    Object? name = null,
    Object? redactedApiKey = null,
    Object? teamBlocked = null,
    Object? teamId = null,
    Object? userId = null,
  }) {
    return _then(_ApiKeyInfo(
      acls: null == acls
          ? _self._acls
          : acls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiKeyBlocked: null == apiKeyBlocked
          ? _self.apiKeyBlocked
          : apiKeyBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKeyDisabled: null == apiKeyDisabled
          ? _self.apiKeyDisabled
          : apiKeyDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKeyId: null == apiKeyId
          ? _self.apiKeyId
          : apiKeyId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedBy: null == modifiedBy
          ? _self.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String,
      modifyTime: null == modifyTime
          ? _self.modifyTime
          : modifyTime // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      redactedApiKey: null == redactedApiKey
          ? _self.redactedApiKey
          : redactedApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      teamBlocked: null == teamBlocked
          ? _self.teamBlocked
          : teamBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      teamId: null == teamId
          ? _self.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
