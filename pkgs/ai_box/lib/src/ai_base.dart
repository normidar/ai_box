abstract class AIBase {
  const AIBase({required this.apiKey});

  final String apiKey;

  Future<List<AIModel>> getModels();

  Future<List<String>> getModelIds() async =>
      (await getModels()).map((m) => m.id).toList();

  Future<bool> validateKey();
}

class AIModel {
  const AIModel({
    required this.id,
    this.name,
    this.created,
    this.description,
    this.contextLength,
  });

  final String id;
  final String? name;
  final int? created;
  final String? description;
  final int? contextLength;

  @override
  String toString() {
    return 'AIModel(id: $id, name: $name, created: $created, '
        'description: $description, contextLength: $contextLength)';
  }
}
