import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_key_info.freezed.dart';
part 'api_key_info.g.dart';

@freezed
abstract class ApiKeyInfo with _$ApiKeyInfo {
  factory ApiKeyInfo({
    /// A list of ACLs authorized with the API key
    required List<String> acls,

    /// Indicates whether the API key is blocked
    @JsonKey(name: 'api_key_blocked') required bool apiKeyBlocked,

    /// Indicates whether the API key is disabled
    @JsonKey(name: 'api_key_disabled') required bool apiKeyDisabled,

    /// ID of the API key
    @JsonKey(name: 'api_key_id') required String apiKeyId,

    /// Creation time of the API key in Unix timestamp
    @JsonKey(name: 'create_time') required String createTime,

    /// User ID of the user who last modified the API key
    @JsonKey(name: 'modified_by') required String modifiedBy,

    /// Last modification time of the API key in Unix timestamp
    @JsonKey(name: 'modify_time') required String modifyTime,

    /// The name of the API key specified by user
    required String name,

    /// The redacted API key
    @JsonKey(name: 'redacted_api_key') required String redactedApiKey,

    /// Indicates whether the team that owns the API key is blocked
    @JsonKey(name: 'team_blocked') required bool teamBlocked,

    /// The team ID of the team that owns the API key
    @JsonKey(name: 'team_id') required String teamId,

    /// User ID the API key belongs to
    @JsonKey(name: 'user_id') required String userId,
  }) = _ApiKeyInfo;

  factory ApiKeyInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyInfoFromJson(json);
  const ApiKeyInfo._();
}
