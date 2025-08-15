// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestHeader _$RequestHeaderFromJson(Map<String, dynamic> json) =>
    _RequestHeader(
      apiKey: json['x-api-key'] as String,
      anthropicVersion: json['anthropic-version'] as String,
      anthropicBeta: _anthropicBetaFromJson(json['anthropic-beta']),
    );

Map<String, dynamic> _$RequestHeaderToJson(_RequestHeader instance) =>
    <String, dynamic>{
      'x-api-key': instance.apiKey,
      'anthropic-version': instance.anthropicVersion,
      if (_anthropicBetaToJson(instance.anthropicBeta) case final value?)
        'anthropic-beta': value,
    };
