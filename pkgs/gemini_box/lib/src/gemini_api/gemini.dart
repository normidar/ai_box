import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:gemini_box/gemini_box.dart';

class Gemini extends LLMAIBase {
  Gemini({required super.apiKey}) : files = GeminiFiles(apiKey: apiKey);

  final GeminiFiles files;

  @override
  Future<LLMResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    int? seed,
  }) async {
    final response = await GeminiCore.generateContent(
      apiKey: apiKey,
      model: model,
      requestBody: RequestBody(
        contents: messages
            .map(
              (e) => Content(
                role: e.role.name,
                parts: [
                  Part(text: e.content),
                ],
              ),
            )
            .toList(),
        generationConfig: GenerationConfig(
          maxOutputTokens: maxTokens,
          seed: seed,
        ),
      ),
    );
    return LLMResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: response.candidates?.first.content?.parts.first.text ?? '',
      ),
      inputTokens: response.usageMetadata?.promptTokenCount ?? 0,
      outputTokens: response.usageMetadata?.candidatesTokenCount ?? 0,
    );
  }

  /// Generate content
  ///
  /// Ref: https://ai.google.dev/api/generate-content#method:-models.generatecontent
  Future<GenerateContentResponse> generateContent({
    required String model,
    required RequestBody requestBody,
  }) =>
      GeminiCore.generateContent(
        apiKey: apiKey,
        model: model,
        requestBody: requestBody,
      );

  @override
  Future<List<String>> getModelIds() {
    return GeminiCore.getModels(apiKey: apiKey)
        .then((value) => value.map((e) => e.name.split('/').last).toList());
  }

  /// Get all models
  ///
  /// Ref: https://ai.google.dev/api/models#method:-models.list
  Future<List<ModelInfo>> getModels() => GeminiCore.getModels(apiKey: apiKey);

  @override
  Future<bool> validateKey() {
    return GeminiCore.getModels(apiKey: apiKey)
        .then((value) => value.isNotEmpty);
  }
}

class GeminiFiles {
  GeminiFiles({required String apiKey}) : _apiKey = apiKey;

  final String _apiKey;

  /// Get all files
  ///
  /// Ref: https://ai.google.dev/gemini-api/docs/image-understanding#upload-image
  Future<List<GeminiFile>> getFiles() =>
      GeminiFilesCore.getFiles(apiKey: _apiKey);

  /// Upload file
  ///
  /// Ref: https://ai.google.dev/gemini-api/docs/image-understanding#upload-image
  Future<GeminiFile> uploadFile({
    required File file,
  }) =>
      GeminiFilesCore.uploadFile(
        apiKey: _apiKey,
        file: file,
      );
}
