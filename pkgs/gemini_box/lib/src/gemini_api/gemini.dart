import 'dart:io';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:ai_box/provider_http.dart';
import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';

/// Google Gemini プロバイダー（チャット・画像生成・テキスト埋め込み）。
class Gemini extends LLMAIBase with ImageGenerator, TextEmbedder {
  Gemini({required super.apiKey, this.baseUrl = defaultBaseUrl})
      : files = GeminiFiles(apiKey: apiKey);

  /// Gemini API の既定のベース URL。
  static const defaultBaseUrl =
      'https://generativelanguage.googleapis.com/v1beta';

  /// API のベース URL（テストで差し替える）。モデル一覧・ファイルは常に
  /// Google へ問い合わせる。
  final String baseUrl;

  final GeminiFiles files;

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final body = _buildGeminiBody(request);
    final data = await _postGemini(
      apiKey: apiKey,
      url: '$baseUrl/models/${request.model}:generateContent',
      body: body,
    );
    return _parseGeminiResponse(data);
  }

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由・トークン使用量が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    final data = postSseData(
      url: '$baseUrl/models/${request.model}:streamGenerateContent',
      provider: GeminiCore.provider,
      headers: {'x-goog-api-key': apiKey},
      body: _buildGeminiBody(request),
      queryParameters: {'alt': 'sse'},
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
    return models.map(_toAIModel).toList();
  }

  /// 画像生成（画像を出力できる Gemini モデルへ `generateContent` で
  /// `responseModalities: [TEXT, IMAGE]` を送る）。[ImageGenerationRequest.n]
  /// は無視して 1 回だけ生成する。
  @override
  Future<ImageGenerationResponse> generateImage(
    ImageGenerationRequest request,
  ) async {
    final aspectRatio = request.aspectRatio;
    final data = await _postGemini(
      apiKey: apiKey,
      url: '$baseUrl/models/${request.model}:generateContent',
      body: {
        'contents': [
          {
            'role': 'user',
            'parts': [
              {'text': request.prompt},
            ],
          },
        ],
        'generationConfig': {
          'responseModalities': ['TEXT', 'IMAGE'],
          if (aspectRatio != null) 'imageConfig': {'aspectRatio': aspectRatio},
        },
      },
    );
    final res = _parseGeminiResponse(data);
    return ImageGenerationResponse(
      images: res.content.images,
      usage: res.usage,
    );
  }

  /// 画像を出力できるモデル（`generateContent` に対応し、ID に `image` を
  /// 含むもの。`:predict` を使う Imagen は含めない）。
  @override
  Future<List<AIModel>> getImageModels() async => [
        for (final m in await GeminiCore.getModels(apiKey: apiKey))
          if (isImageModel(m)) _toAIModel(m),
      ];

  /// [model] が [generateImage] で使える画像モデルか。
  static bool isImageModel(ModelInfo model) {
    final id = model.name.split('/').last;
    return id.contains('image') &&
        !id.startsWith('imagen') &&
        model.supportedGenerationMethods.contains('generateContent');
  }

  /// 1 回のリクエストで送れる入力の上限（`batchEmbedContents`）。
  @override
  int get maxEmbeddingBatch => 100;

  /// テキスト埋め込み（`batchEmbedContents`）。
  @override
  Future<EmbeddingResponse> embedBatch(EmbeddingRequest request) async {
    final task = switch (request.task) {
      EmbeddingTask.document => 'RETRIEVAL_DOCUMENT',
      EmbeddingTask.query => 'RETRIEVAL_QUERY',
      null => null,
    };
    final data = await _postGemini(
      apiKey: apiKey,
      url: '$baseUrl/models/${request.model}:batchEmbedContents',
      body: {
        'requests': [
          for (final text in request.inputs)
            {
              'model': 'models/${request.model}',
              'content': {
                'parts': [
                  {'text': text},
                ],
              },
              if (task != null) 'taskType': task,
              if (request.dimensions != null)
                'outputDimensionality': request.dimensions,
            },
        ],
      },
    );
    final embeddings = [
      for (final e in (data['embeddings'] as List?) ?? const [])
        if (e is Map<String, dynamic> && e['values'] is List)
          Float32List.fromList([
            for (final v in e['values'] as List) (v as num).toDouble(),
          ]),
    ];
    if (embeddings.length != request.inputs.length) {
      throw LLMUnknownException(
        'Expected ${request.inputs.length} embeddings from Gemini, '
        'got ${embeddings.length}',
        provider: GeminiCore.provider,
        raw: data,
      );
    }
    final usage = _asMap(data['usageMetadata']);
    return EmbeddingResponse(
      vectors: embeddings,
      inputTokens: (usage['promptTokenCount'] as num?)?.toInt(),
    );
  }

  /// 埋め込みモデル（`embedContent` に対応するもの）。
  @override
  Future<List<AIModel>> getEmbeddingModels() async => [
        for (final m in await GeminiCore.getModels(apiKey: apiKey))
          if (m.supportedGenerationMethods.contains('embedContent') ||
              m.supportedGenerationMethods.contains('batchEmbedContents'))
            _toAIModel(m),
      ];

  static AIModel _toAIModel(ModelInfo e) => AIModel(
        id: e.name.split('/').last,
        name: e.displayName,
        description: e.description,
        contextLength: e.inputTokenLimit,
      );

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

Future<Map<String, dynamic>> _postGemini({
  required String apiKey,
  required String url,
  required Map<String, dynamic> body,
}) {
  return GeminiCore.requestJson(
    () => ac.Api.post(
      requestAcc: ac.PostRequestAcc(
        url: url,
        // API キーは URL（ログ・プロキシに残る）ではなくヘッダーで送る。
        headers: ac.RestHeaders({'x-goog-api-key': apiKey}),
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
