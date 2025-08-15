// ref: https://spec.openapis.org/oas/v3.0.3#data-types
enum SchemaType {
  str(type: 'string'),
  strDate(type: 'string', format: 'date'),
  strDateTime(type: 'string', format: 'date-time'),
  strPassword(type: 'string', format: 'password'),
  // base64 encoded binary data
  strByte(type: 'string', format: 'byte'),
  strBinary(type: 'string', format: 'binary'),
  int(type: 'integer'),
  int32(type: 'integer', format: 'int32'),
  int64(type: 'integer', format: 'int64'),
  num(type: 'number'),
  numFloat(type: 'number', format: 'float'),
  numDouble(type: 'number', format: 'double'),
  bool(type: 'boolean'),
  array(type: 'array'),
  object(type: 'object'),
  nil(type: 'null'),
  ;

  const SchemaType({
    required this.type,
    this.format,
  });

  final String type;

  final String? format;
}
