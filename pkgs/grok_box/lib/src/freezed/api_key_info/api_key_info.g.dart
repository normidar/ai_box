// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiKeyInfo _$ApiKeyInfoFromJson(Map<String, dynamic> json) => _ApiKeyInfo(
      acls: (json['acls'] as List<dynamic>).map((e) => e as String).toList(),
      apiKeyBlocked: json['api_key_blocked'] as bool,
      apiKeyDisabled: json['api_key_disabled'] as bool,
      apiKeyId: json['api_key_id'] as String,
      createTime: json['create_time'] as String,
      modifiedBy: json['modified_by'] as String,
      modifyTime: json['modify_time'] as String,
      name: json['name'] as String,
      redactedApiKey: json['redacted_api_key'] as String,
      teamBlocked: json['team_blocked'] as bool,
      teamId: json['team_id'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$ApiKeyInfoToJson(_ApiKeyInfo instance) =>
    <String, dynamic>{
      'acls': instance.acls,
      'api_key_blocked': instance.apiKeyBlocked,
      'api_key_disabled': instance.apiKeyDisabled,
      'api_key_id': instance.apiKeyId,
      'create_time': instance.createTime,
      'modified_by': instance.modifiedBy,
      'modify_time': instance.modifyTime,
      'name': instance.name,
      'redacted_api_key': instance.redactedApiKey,
      'team_blocked': instance.teamBlocked,
      'team_id': instance.teamId,
      'user_id': instance.userId,
    };
