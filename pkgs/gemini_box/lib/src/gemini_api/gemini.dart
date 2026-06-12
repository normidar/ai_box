import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/provider_http.dart';
import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';

class Gemini extends LLMAIBase {
  Gemini({required super.apiKey}) : files = GeminiFiles(apiKey: apiKey);

  final GeminiFiles files;

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final body = _buildGeminiBody(request);
    final data = await _postGemini(
      apiKey: apiKey,
      model: request.model,
      body: body,
    );
    return _parseGeminiResponse(data);
  }

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由・トークン使用量が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    final data = postSseData(
      url: '$_baseUrl/models/${request.model}:streamGenerateContent',
      provider: GeminiCore.provider,
      headers: const {},
      body: _buildGeminiBody(request),
      queryParameters: {'key': apiKey, 'alt': 'sse'},
    );
    return geminiChunksFromEvents(decodeSseJson(data));
  }

  /// Generate content (低レベル・型付き API)
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
  Future<bool> validateKey() async {
    try {
      final models = await GeminiCore.getModels(apiKey: apiKey);
      return models.isNotEmpty;
    } on LLMException {
      return false;
    }
  }
}

Map<String, dynamic> _buildGeminiBody(LLMCompletionRequest request) {
  final system = request.messages
      .where((e) => e.role == LLMRole.system)
      .map((e) => e.text)
      .where((t) => t.isNotEmpty)
      .join('\n');
  final convo =
      request.messages.where((e) => e.role != LLMRole.system).toList();

  final body = <String, dynamic>{
    'contents': [for (final m in convo) _toGeminiContent(m)],
  };
  if (system.isNotEmpty) {
    body['systemInstruction'] = {
      'parts': [
        {'text': system},
      ],
    };
  }

  final genConfig = <String, dynamic>{};
  if (request.maxTokens != null) {
    genConfig['maxOutputTokens'] = request.maxTokens;
  }
  if (request.temperature != null) {
    genConfig['temperature'] = request.temperature;
  }
  if (request.topP != null) genConfig['topP'] = request.topP;
  if (request.stop != null) genConfig['stopSequences'] = request.stop;
  if (request.seed != null) genConfig['seed'] = request.seed;
  if (request.frequencyPenalty != null) {
    genConfig['frequencyPenalty'] = request.frequencyPenalty;
  }
  if (request.presencePenalty != null) {
    genConfig['presencePenalty'] = request.presencePenalty;
  }
  final rf = request.responseFormat;
  if (rf != null) {
    if (rf.type == LLMResponseFormatType.jsonObject) {
      genConfig['responseMimeType'] = 'application/json';
    } else if (rf.type == LLMResponseFormatType.jsonSchema) {
      genConfig['responseMimeType'] = 'application/json';
      genConfig['responseSchema'] = rf.schema;
    }
  }
  if (genConfig.isNotEmpty) body['generationConfig'] = genConfig;

  final tools = request.tools;
  if (tools != null && tools.isNotEmpty) {
    body['tools'] = [
      {
        'functionDeclarations': [
          for (final t in tools)
            {
              'name': t.name,
              'description': t.description,
              'parameters': t.parameters,
            },
        ],
      },
    ];
    final tc = _toGeminiToolConfig(request.toolChoice);
    if (tc != null) body['toolConfig'] = tc;
  }
  return body;
}

Map<String, dynamic> _toGeminiContent(LLMContent m) {
  final role = m.role == LLMRole.model ? 'model' : 'user';
  final parts = <Map<String, dynamic>>[];
  for (final p in m.parts) {
    if (p is LLMTextPart) {
      if (p.text.isNotEmpty) parts.add({'text': p.text});
    } else if (p is LLMImagePart) {
      parts.add(_geminiMediaPart(p.url, p.base64Data, p.mimeType, 'image/png'));
    } else if (p is LLMAudioPart) {
      parts.add(
        _geminiMediaPart(p.url, p.base64Data, p.mimeType, 'audio/mpeg'),
      );
    } else if (p is LLMFilePart) {
      parts.add(
        _geminiMediaPart(
          p.url,
          p.base64Data,
          p.mimeType,
          'application/octet-stream',
        ),
      );
    } else if (p is LLMToolCallPart) {
      parts.add({
        'functionCall': {'name': p.name, 'args': p.arguments},
      });
    } else if (p is LLMToolResultPart) {
      parts.add({
        'functionResponse': {
          'name': p.toolName ?? p.toolCallId,
          'response': {'content': p.content},
        },
      });
    }
  }
  return {'role': role, 'parts': parts};
}

Map<String, dynamic> _geminiMediaPart(
  String? url,
  String? base64Data,
  String? mimeType,
  String fallbackMime,
) {
  if (base64Data != null) {
    return {
      'inlineData': {
        'mimeType': mimeType ?? fallbackMime,
        'data': base64Data,
      },
    };
  }
  return {
    'fileData': {
      'fileUri': url ?? '',
      'mimeType': mimeType ?? fallbackMime,
    },
  };
}

Map<String, dynamic>? _toGeminiToolConfig(LLMToolChoice? tc) {
  if (tc == null) return null;
  final mode = switch (tc.mode) {
    LLMToolChoiceMode.auto => 'AUTO',
    LLMToolChoiceMode.none => 'NONE',
    LLMToolChoiceMode.any => 'ANY',
  };
  final cfg = <String, dynamic>{'mode': mode};
  final toolName = tc.toolName;
  if (toolName != null) cfg['allowedFunctionNames'] = [toolName];
  return {'functionCallingConfig': cfg};
}

Map<String, dynamic> _asMap(Object? v) =>
    v is Map<String, dynamic> ? v : const <String, dynamic>{};

LLMCompletionResponse _parseGeminiResponse(Map<String, dynamic> data) {
  final candidates = (data['candidates'] as List?) ?? const [];
  final candidate = candidates.isNotEmpty
      ? _asMap(candidates.first)
      : const <String, dynamic>{};
  final content = _asMap(candidate['content']);
  final rawParts = (content['parts'] as List?) ?? const [];

  final parts = <LLMContentPart>[];
  for (final p in rawParts) {
    if (p is! Map<String, dynamic>) continue;
    if (p['thought'] == true) {
      final t = p['text'];
      if (t is String) parts.add(LLMReasoningPart(t));
      continue;
    }
    if (p['text'] is String) {
      parts.add(LLMTextPart(p['text'] as String));
    } else if (p['inlineData'] is Map<String, dynamic>) {
      parts.add(
        geminiInlineDataToPart(p['inlineData'] as Map<String, dynamic>),
      );
    } else if (p['fileData'] is Map<String, dynamic>) {
      final fd = p['fileData'] as Map<String, dynamic>;
      parts.add(LLMImagePart.url((fd['fileUri'] ?? '').toString()));
    } else if (p['functionCall'] is Map<String, dynamic>) {
      final fc = p['functionCall'] as Map<String, dynamic>;
      parts.add(
        LLMToolCallPart(
          id: (fc['id'] ?? fc['name'] ?? '').toString(),
          name: (fc['name'] ?? '').toString(),
          arguments:
              (fc['args'] as Map<String, dynamic>?) ?? <String, dynamic>{},
        ),
      );
    } else if (p['executableCode'] is Map<String, dynamic>) {
      final ec = p['executableCode'] as Map<String, dynamic>;
      parts.add(
        LLMCodeExecutionPart(
          code: (ec['code'] ?? '').toString(),
          language: (ec['language'] ?? '').toString(),
        ),
      );
    } else if (p['codeExecutionResult'] is Map<String, dynamic>) {
      final cer = p['codeExecutionResult'] as Map<String, dynamic>;
      parts.add(
        LLMCodeExecutionResultPart(
          outcome: (cer['outcome'] ?? '').toString(),
          output: cer['output'] as String?,
        ),
      );
    }
  }

  final usage = _asMap(data['usageMetadata']);
  return LLMCompletionResponse(
    content: LLMContent(role: LLMRole.model, parts: parts),
    usage: LLMUsage(
      inputTokens: (usage['promptTokenCount'] as num?)?.toInt() ?? 0,
      outputTokens: (usage['candidatesTokenCount'] as num?)?.toInt() ?? 0,
      cachedInputTokens: (usage['cachedContentTokenCount'] as num?)?.toInt(),
      reasoningTokens: (usage['thoughtsTokenCount'] as num?)?.toInt(),
    ),
    finishReason: LLMFinishReason.parse(candidate['finishReason'] as String?),
    model: data['modelVersion'] as String?,
  );
}

const _baseUrl = 'https://generativelanguage.googleapis.com/v1beta';

Future<Map<String, dynamic>> _postGemini({
  required String apiKey,
  required String model,
  required Map<String, dynamic> body,
}) {
  return GeminiCore.requestJson(
    () => ac.Api.post(
      requestAcc: ac.PostRequestAcc(
        url: '$_baseUrl/models/$model:generateContent',
        queryParameters: {'key': apiKey},
        body: ac.JsonRequestBody(body),
      ),
    ),
  );
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
