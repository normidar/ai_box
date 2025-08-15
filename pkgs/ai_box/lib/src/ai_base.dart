abstract class AIBase {
  const AIBase({required this.apiKey});

  final String apiKey;

  Future<List<String>> getModelIds();

  Future<bool> validateKey();
}
