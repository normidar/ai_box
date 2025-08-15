// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Schema {
  Type get type;
  String? get format;
  String? get title;
  String? get description;
  bool? get nullable;
  @JsonKey(name: 'enum')
  List<String>? get enum_;
  String? get maxItems;
  String? get minItems;
  Map<String, Schema>? get properties;
  List<String>? get required;
  String? get minProperties;
  String? get maxProperties;
  String? get minLength;
  String? get maxLength;
  String? get pattern;
  dynamic get example;
  List<Schema>? get anyOf;
  List<String>? get propertyOrdering;
  @JsonKey(name: 'default')
  dynamic get default_;
  Schema? get items;
  num? get minimum;
  num? get maximum;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<Schema> get copyWith =>
      _$SchemaCopyWithImpl<Schema>(this as Schema, _$identity);

  /// Serializes this Schema to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Schema &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable) &&
            const DeepCollectionEquality().equals(other.enum_, enum_) &&
            (identical(other.maxItems, maxItems) ||
                other.maxItems == maxItems) &&
            (identical(other.minItems, minItems) ||
                other.minItems == minItems) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            (identical(other.minProperties, minProperties) ||
                other.minProperties == minProperties) &&
            (identical(other.maxProperties, maxProperties) ||
                other.maxProperties == maxProperties) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other.anyOf, anyOf) &&
            const DeepCollectionEquality()
                .equals(other.propertyOrdering, propertyOrdering) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        format,
        title,
        description,
        nullable,
        const DeepCollectionEquality().hash(enum_),
        maxItems,
        minItems,
        const DeepCollectionEquality().hash(properties),
        const DeepCollectionEquality().hash(required),
        minProperties,
        maxProperties,
        minLength,
        maxLength,
        pattern,
        const DeepCollectionEquality().hash(example),
        const DeepCollectionEquality().hash(anyOf),
        const DeepCollectionEquality().hash(propertyOrdering),
        const DeepCollectionEquality().hash(default_),
        items,
        minimum,
        maximum
      ]);

  @override
  String toString() {
    return 'Schema(type: $type, format: $format, title: $title, description: $description, nullable: $nullable, enum_: $enum_, maxItems: $maxItems, minItems: $minItems, properties: $properties, required: $required, minProperties: $minProperties, maxProperties: $maxProperties, minLength: $minLength, maxLength: $maxLength, pattern: $pattern, example: $example, anyOf: $anyOf, propertyOrdering: $propertyOrdering, default_: $default_, items: $items, minimum: $minimum, maximum: $maximum)';
  }
}

/// @nodoc
abstract mixin class $SchemaCopyWith<$Res> {
  factory $SchemaCopyWith(Schema value, $Res Function(Schema) _then) =
      _$SchemaCopyWithImpl;
  @useResult
  $Res call(
      {Type type,
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
      num? maximum});

  $SchemaCopyWith<$Res>? get items;
}

/// @nodoc
class _$SchemaCopyWithImpl<$Res> implements $SchemaCopyWith<$Res> {
  _$SchemaCopyWithImpl(this._self, this._then);

  final Schema _self;
  final $Res Function(Schema) _then;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? format = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? nullable = freezed,
    Object? enum_ = freezed,
    Object? maxItems = freezed,
    Object? minItems = freezed,
    Object? properties = freezed,
    Object? required = freezed,
    Object? minProperties = freezed,
    Object? maxProperties = freezed,
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? pattern = freezed,
    Object? example = freezed,
    Object? anyOf = freezed,
    Object? propertyOrdering = freezed,
    Object? default_ = freezed,
    Object? items = freezed,
    Object? minimum = freezed,
    Object? maximum = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
      enum_: freezed == enum_
          ? _self.enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maxItems: freezed == maxItems
          ? _self.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as String?,
      minItems: freezed == minItems
          ? _self.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, Schema>?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minProperties: freezed == minProperties
          ? _self.minProperties
          : minProperties // ignore: cast_nullable_to_non_nullable
              as String?,
      maxProperties: freezed == maxProperties
          ? _self.maxProperties
          : maxProperties // ignore: cast_nullable_to_non_nullable
              as String?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _self.example
          : example // ignore: cast_nullable_to_non_nullable
              as dynamic,
      anyOf: freezed == anyOf
          ? _self.anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<Schema>?,
      propertyOrdering: freezed == propertyOrdering
          ? _self.propertyOrdering
          : propertyOrdering // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      default_: freezed == default_
          ? _self.default_
          : default_ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as Schema?,
      minimum: freezed == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as num?,
      maximum: freezed == maximum
          ? _self.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_self.items!, (value) {
      return _then(_self.copyWith(items: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Schema extends Schema {
  _Schema(
      {required this.type,
      this.format,
      this.title,
      this.description,
      this.nullable,
      @JsonKey(name: 'enum') final List<String>? enum_,
      this.maxItems,
      this.minItems,
      final Map<String, Schema>? properties,
      final List<String>? required,
      this.minProperties,
      this.maxProperties,
      this.minLength,
      this.maxLength,
      this.pattern,
      this.example,
      final List<Schema>? anyOf,
      final List<String>? propertyOrdering,
      @JsonKey(name: 'default') this.default_,
      this.items,
      this.minimum,
      this.maximum})
      : _enum_ = enum_,
        _properties = properties,
        _required = required,
        _anyOf = anyOf,
        _propertyOrdering = propertyOrdering,
        super._();
  factory _Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);

  @override
  final Type type;
  @override
  final String? format;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? nullable;
  final List<String>? _enum_;
  @override
  @JsonKey(name: 'enum')
  List<String>? get enum_ {
    final value = _enum_;
    if (value == null) return null;
    if (_enum_ is EqualUnmodifiableListView) return _enum_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? maxItems;
  @override
  final String? minItems;
  final Map<String, Schema>? _properties;
  @override
  Map<String, Schema>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _required;
  @override
  List<String>? get required {
    final value = _required;
    if (value == null) return null;
    if (_required is EqualUnmodifiableListView) return _required;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? minProperties;
  @override
  final String? maxProperties;
  @override
  final String? minLength;
  @override
  final String? maxLength;
  @override
  final String? pattern;
  @override
  final dynamic example;
  final List<Schema>? _anyOf;
  @override
  List<Schema>? get anyOf {
    final value = _anyOf;
    if (value == null) return null;
    if (_anyOf is EqualUnmodifiableListView) return _anyOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _propertyOrdering;
  @override
  List<String>? get propertyOrdering {
    final value = _propertyOrdering;
    if (value == null) return null;
    if (_propertyOrdering is EqualUnmodifiableListView)
      return _propertyOrdering;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'default')
  final dynamic default_;
  @override
  final Schema? items;
  @override
  final num? minimum;
  @override
  final num? maximum;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SchemaCopyWith<_Schema> get copyWith =>
      __$SchemaCopyWithImpl<_Schema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SchemaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Schema &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable) &&
            const DeepCollectionEquality().equals(other._enum_, _enum_) &&
            (identical(other.maxItems, maxItems) ||
                other.maxItems == maxItems) &&
            (identical(other.minItems, minItems) ||
                other.minItems == minItems) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            const DeepCollectionEquality().equals(other._required, _required) &&
            (identical(other.minProperties, minProperties) ||
                other.minProperties == minProperties) &&
            (identical(other.maxProperties, maxProperties) ||
                other.maxProperties == maxProperties) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other._anyOf, _anyOf) &&
            const DeepCollectionEquality()
                .equals(other._propertyOrdering, _propertyOrdering) &&
            const DeepCollectionEquality().equals(other.default_, default_) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        format,
        title,
        description,
        nullable,
        const DeepCollectionEquality().hash(_enum_),
        maxItems,
        minItems,
        const DeepCollectionEquality().hash(_properties),
        const DeepCollectionEquality().hash(_required),
        minProperties,
        maxProperties,
        minLength,
        maxLength,
        pattern,
        const DeepCollectionEquality().hash(example),
        const DeepCollectionEquality().hash(_anyOf),
        const DeepCollectionEquality().hash(_propertyOrdering),
        const DeepCollectionEquality().hash(default_),
        items,
        minimum,
        maximum
      ]);

  @override
  String toString() {
    return 'Schema(type: $type, format: $format, title: $title, description: $description, nullable: $nullable, enum_: $enum_, maxItems: $maxItems, minItems: $minItems, properties: $properties, required: $required, minProperties: $minProperties, maxProperties: $maxProperties, minLength: $minLength, maxLength: $maxLength, pattern: $pattern, example: $example, anyOf: $anyOf, propertyOrdering: $propertyOrdering, default_: $default_, items: $items, minimum: $minimum, maximum: $maximum)';
  }
}

/// @nodoc
abstract mixin class _$SchemaCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory _$SchemaCopyWith(_Schema value, $Res Function(_Schema) _then) =
      __$SchemaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Type type,
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
      num? maximum});

  @override
  $SchemaCopyWith<$Res>? get items;
}

/// @nodoc
class __$SchemaCopyWithImpl<$Res> implements _$SchemaCopyWith<$Res> {
  __$SchemaCopyWithImpl(this._self, this._then);

  final _Schema _self;
  final $Res Function(_Schema) _then;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? format = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? nullable = freezed,
    Object? enum_ = freezed,
    Object? maxItems = freezed,
    Object? minItems = freezed,
    Object? properties = freezed,
    Object? required = freezed,
    Object? minProperties = freezed,
    Object? maxProperties = freezed,
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? pattern = freezed,
    Object? example = freezed,
    Object? anyOf = freezed,
    Object? propertyOrdering = freezed,
    Object? default_ = freezed,
    Object? items = freezed,
    Object? minimum = freezed,
    Object? maximum = freezed,
  }) {
    return _then(_Schema(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nullable: freezed == nullable
          ? _self.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
      enum_: freezed == enum_
          ? _self._enum_
          : enum_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maxItems: freezed == maxItems
          ? _self.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as String?,
      minItems: freezed == minItems
          ? _self.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, Schema>?,
      required: freezed == required
          ? _self._required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minProperties: freezed == minProperties
          ? _self.minProperties
          : minProperties // ignore: cast_nullable_to_non_nullable
              as String?,
      maxProperties: freezed == maxProperties
          ? _self.maxProperties
          : maxProperties // ignore: cast_nullable_to_non_nullable
              as String?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _self.example
          : example // ignore: cast_nullable_to_non_nullable
              as dynamic,
      anyOf: freezed == anyOf
          ? _self._anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<Schema>?,
      propertyOrdering: freezed == propertyOrdering
          ? _self._propertyOrdering
          : propertyOrdering // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      default_: freezed == default_
          ? _self.default_
          : default_ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as Schema?,
      minimum: freezed == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as num?,
      maximum: freezed == maximum
          ? _self.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_self.items!, (value) {
      return _then(_self.copyWith(items: value));
    });
  }
}

// dart format on
