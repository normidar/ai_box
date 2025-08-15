// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schema _$SchemaFromJson(Map<String, dynamic> json) => _Schema(
      type: $enumDecode(_$TypeEnumMap, json['type']),
      format: json['format'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      nullable: json['nullable'] as bool?,
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      maxItems: json['maxItems'] as String?,
      minItems: json['minItems'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
      ),
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minProperties: json['minProperties'] as String?,
      maxProperties: json['maxProperties'] as String?,
      minLength: json['minLength'] as String?,
      maxLength: json['maxLength'] as String?,
      pattern: json['pattern'] as String?,
      example: json['example'],
      anyOf: (json['anyOf'] as List<dynamic>?)
          ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
          .toList(),
      propertyOrdering: (json['propertyOrdering'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      default_: json['default'],
      items: json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
      minimum: json['minimum'] as num?,
      maximum: json['maximum'] as num?,
    );

Map<String, dynamic> _$SchemaToJson(_Schema instance) => <String, dynamic>{
      'type': _$TypeEnumMap[instance.type]!,
      'format': instance.format,
      'title': instance.title,
      'description': instance.description,
      'nullable': instance.nullable,
      'enum': instance.enum_,
      'maxItems': instance.maxItems,
      'minItems': instance.minItems,
      'properties': instance.properties,
      'required': instance.required,
      'minProperties': instance.minProperties,
      'maxProperties': instance.maxProperties,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'pattern': instance.pattern,
      'example': instance.example,
      'anyOf': instance.anyOf,
      'propertyOrdering': instance.propertyOrdering,
      'default': instance.default_,
      'items': instance.items,
      'minimum': instance.minimum,
      'maximum': instance.maximum,
    };

const _$TypeEnumMap = {
  Type.TYPE_UNSPECIFIED: 'TYPE_UNSPECIFIED',
  Type.STRING: 'STRING',
  Type.NUMBER: 'NUMBER',
  Type.BOOLEAN: 'BOOLEAN',
  Type.ARRAY: 'ARRAY',
  Type.OBJECT: 'OBJECT',
  Type.NULL: 'NULL',
};
