// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schema.freezed.dart';
part 'schema.g.dart';

@freezed
abstract class Schema with _$Schema {
  factory Schema({
    required Type type,
    String? format,
    String? title,
    String? description,
    bool? nullable,
    @JsonKey(name: 'enum') List<String>? enum_,
    String? maxItems,
    String? minItems,
    Map<String, Schema>? properties,
    List<String>? required,
    String? minProperties,
    String? maxProperties,
    String? minLength,
    String? maxLength,
    String? pattern,
    dynamic example,
    List<Schema>? anyOf,
    List<String>? propertyOrdering,
    @JsonKey(name: 'default') dynamic default_,
    Schema? items,
    num? minimum,
    num? maximum,
  }) = _Schema;

  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);
  const Schema._();
}

enum Type {
  TYPE_UNSPECIFIED,
  STRING,
  NUMBER,
  BOOLEAN,
  ARRAY,
  OBJECT,
  NULL,
}
