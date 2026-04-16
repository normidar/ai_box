import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:gemini_box/gemini_box.dart';

class Gemini extends LLMAIBase {
  Gemini({required super.apiKey}) : files = GeminiFiles(apiKey: apiKey);

  final GeminiFiles files;

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    // Gemini では system ロールのメッセージを systemInstruction に分離する
    final systemMessages = request.messages
        .where((e) => e.role == LLMRole.system)
        .map((e) => e.content)
        .join('\n');
    final userMessages = request.messages
        .where((e) => e.role != LLMRole.system)
        .toList();

    String? responseMimeType;
    if (request.responseFormat?.type == LLMResponseFormatType.jsonObject) {
      responseMimeType = 'application/json';
    }

    final response = await GeminiCore.generateContent(
      apiKey: apiKey,
      model: request.model,
      requestBody: RequestBody(
        contents: userMessages
            .map(
              (e) => Content(
                role: e.role == LLMRole.model ? 'model' : 'user',
                parts: [Part(text: e.content)],
              ),
            )
            .toList(),
        systemInstruction: systemMessages.isNotEmpty
            ? Content(parts: [Part(text: systemMessages)])
            : null,
        generationConfig: GenerationConfig(
          maxOutputTokens: request.maxTokens,
          temperature: request.temperature,
          topP: request.topP,
          stopSequences: request.stop,
          seed: request.seed,
          frequencyPenalty: request.frequencyPenalty,
          presencePenalty: request.presencePenalty,
          responseMimeType: responseMimeType,
        ),
      ),
    );

    final candidate = response.candidates?.first;
    return LLMCompletionResponse(
      content: LLMContent(
        role: LLMRole.model,
        content: candidate?.content?.parts.first.text ?? '',
      ),
      inputTokens: response.usageMetadata?.promptTokenCount ?? 0,
      outputTokens: response.usageMetadata?.candidatesTokenCount ?? 0,
      finishReason: candidate?.finishReason?.name,
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
  Future<List<AIModel>> getModels() async {
    final models = await GeminiCore.getModels(apiKey: apiKey);
    return models
        .map(
          (e) => AIModel(
            id: e.name.split('/').last,
            name: e.displayName,
            description: e.description,
            contextLength: e.inputTokenLimit,
          ),
        )
        .toList();
  }

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
