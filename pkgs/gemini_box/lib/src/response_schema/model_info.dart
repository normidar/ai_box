/// Ref:https://ai.google.dev/api/models#Model
class ModelInfo {
  const ModelInfo({
    required this.name,
    required this.version,
    required this.displayName,
    required this.description,
    required this.inputTokenLimit,
    required this.outputTokenLimit,
    required this.supportedGenerationMethods,
    required this.temperature,
    required this.maxTemperature,
    required this.topP,
    required this.topK,
  });

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    return ModelInfo(
      name: json['name'] as String,
      version: json['version'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String?,
      inputTokenLimit: json['inputTokenLimit'] as int,
      outputTokenLimit: json['outputTokenLimit'] as int,
      supportedGenerationMethods:
          (json['supportedGenerationMethods'] as List).cast<String>(),
      temperature: json['temperature'] as num?,
      maxTemperature: json['maxTemperature'] as num?,
      topP: json['topP'] as num?,
      topK: json['topK'] as num?,
    );
  }

  final String name;

  final String version;

  final String displayName;

  final String? description;

  final int inputTokenLimit;

  final int outputTokenLimit;

  final List<String> supportedGenerationMethods;

  final num? temperature;

  final num? maxTemperature;

  final num? topP;

  final num? topK;

  @override
  String toString() {
    return 'ModelInfo(name: $name, version: $version, '
        'displayName: $displayName, description: $description, '
        'inputTokenLimit: $inputTokenLimit, '
        'outputTokenLimit: $outputTokenLimit, '
        'supportedGenerationMethods: $supportedGenerationMethods, '
        'temperature: $temperature, maxTemperature: $maxTemperature, '
        'topP: $topP, topK: $topK)';
  }
}
