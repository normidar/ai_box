// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'executable_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExecutableCode _$ExecutableCodeFromJson(Map<String, dynamic> json) =>
    _ExecutableCode(
      code: json['code'] as String,
      language: $enumDecode(_$LanguageEnumMap, json['language']),
    );

Map<String, dynamic> _$ExecutableCodeToJson(_ExecutableCode instance) =>
    <String, dynamic>{
      'code': instance.code,
      'language': _$LanguageEnumMap[instance.language]!,
    };

const _$LanguageEnumMap = {
  Language.LANGUAGE_UNSPECIFIED: 'LANGUAGE_UNSPECIFIED',
  Language.PYTHON: 'PYTHON',
};
