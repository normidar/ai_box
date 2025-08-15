class GeminiFile {
  GeminiFile({
    required this.name,
    required this.displayName,
    required this.mimeType,
    required this.sizeBytes,
    required this.createTime,
    required this.updateTime,
    required this.expirationTime,
    required this.sha256Hash,
    required this.uri,
    required this.state,
    required this.source,
  });

  factory GeminiFile.fromJson(Map<String, dynamic> json) {
    return GeminiFile(
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      mimeType: json['mimeType'] as String,
      sizeBytes: json['sizeBytes'] as String,
      createTime: DateTime.parse(json['createTime'] as String),
      updateTime: DateTime.parse(json['updateTime'] as String),
      expirationTime: DateTime.parse(json['expirationTime'] as String),
      sha256Hash: json['sha256Hash'] as String,
      uri: json['uri'] as String,
      state: json['state'] as String,
      source: json['source'] as String,
    );
  }

  final String name;
  final String displayName;
  final String mimeType;
  final String sizeBytes;
  final DateTime createTime;
  final DateTime updateTime;
  final DateTime expirationTime;
  final String sha256Hash;
  final String uri;

  final String state;

  final String source;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'displayName': displayName,
      'mimeType': mimeType,
      'sizeBytes': sizeBytes,
      'createTime': createTime,
      'updateTime': updateTime,
      'expirationTime': expirationTime,
      'sha256Hash': sha256Hash,
      'uri': uri,
      'state': state,
      'source': source,
    };
  }

  @override
  String toString() {
    return 'GeminiFile(name: $name, displayName: $displayName, '
        'mimeType: $mimeType, sizeBytes: $sizeBytes, createTime: $createTime, '
        'updateTime: $updateTime, expirationTime: $expirationTime, '
        'sha256Hash: $sha256Hash, uri: $uri, state: $state, source: $source)';
  }
}
