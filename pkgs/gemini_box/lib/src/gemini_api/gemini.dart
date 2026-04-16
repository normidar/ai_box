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
      content: _parseParts(candidate?.content?.parts ?? []),
      inputTokens: response.usageMetadata?.promptTokenCount ?? 0,
      outputTokens: response.usageMetadata?.candidatesTokenCount ?? 0,
      finishReason: candidate?.finishReason?.name,
    );
  }

  LLMContent _parseParts(List<Part> parts) {
    // thought=true のパーツ（Thinking トークン）は除外する
    final contentParts = parts.where((p) => p.thought != true).toList();

    if (contentParts.isEmpty) {
      return const LLMContent(role: LLMRole.model, content: '');
    }

    // テキストのみかどうかを確認
    final hasImages = contentParts.any(
      (p) => p.inlineData != null || p.fileData != null,
    );
    if (!hasImages) {
      final text = contentParts.map((p) => p.text ?? '').join();
      return LLMContent(role: LLMRole.model, content: text);
    }

    // マルチモーダル: テキスト・画像・tool_calls・コード実行などが混在
    final llmParts = <LLMContentPart>[];
    final textBuffer = StringBuffer();
    for (final part in contentParts) {
      if (part.text case final text?) {
        textBuffer.write(text);
        llmParts.add(LLMTextPart(text));
      } else if (part.inlineData case final blob?) {
        if (blob.mimeType.startsWith('audio/')) {
          llmParts.add(LLMAudioPart(data: blob.data, mimeType: blob.mimeType));
        } else {
          // 画像（image/png など）は data URI に変換
          final dataUri = 'data:${blob.mimeType};base64,${blob.data}';
          llmParts.add(LLMImagePart(dataUri));
        }
      } else if (part.fileData case final file?) {
        llmParts.add(LLMImagePart(file.fileUri));
      } else if (part.functionCall case final fc?) {
        llmParts.add(
          LLMToolCallPart(
            id: fc.id ?? fc.name,
            name: fc.name,
            arguments: fc.args ?? {},
          ),
        );
      } else if (part.executableCode case final ec?) {
        llmParts.add(
          LLMCodeExecutionPart(code: ec.code, language: ec.language.name),
        );
      } else if (part.codeExecutionResult case final cer?) {
        llmParts.add(
          LLMCodeExecutionResultPart(
            outcome: cer.outcome.name,
            output: cer.output,
          ),
        );
      }
    }
    return LLMContent(
      role: LLMRole.model,
      content: textBuffer.toString(),
      parts: llmParts,
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
