import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:chatgpt_box/src/core/models_core.dart';

/// OpenAI プロバイダー（チャット・画像生成・テキスト埋め込み）。
class ChatGPT extends LLMAIBase with ImageGenerator, TextEmbedder {
  ChatGPT({required super.apiKey, this.baseUrl = defaultBaseUrl});

  /// OpenAI API の既定のベース URL。
  static const defaultBaseUrl = 'https://api.openai.com/v1';
  static const _provider = 'openai';

  /// API のベース URL（互換サーバーやテストで差し替える）。モデル一覧は
  /// 常に OpenAI へ問い合わせる。
  final String baseUrl;

  String get _url => '$baseUrl/chat/completions';

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    // OpenAI の新しいモデルは max_completion_tokens を使う。
    final body = buildOpenAiBody(
      request,
      maxTokensKey: 'max_completion_tokens',
    );
    final data = await postOpenAiJson(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      body: body,
    );
    return parseOpenAiResponse(data);
  }

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由・トークン使用量が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    return streamOpenAiCompletions(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      request: request,
      maxTokensKey: 'max_completion_tokens',
      includeUsage: true,
    );
  }

  @override
  Future<List<AIModel>> getModels() async {
    final models = await ModelsCore.listModels(apiKey: apiKey);
    return models.data
        .map(
          (e) => AIModel(
            id: e.id,
            created: DateTime.fromMillisecondsSinceEpoch(e.created * 1000),
          ),
        )
        .toList();
  }

  /// 画像生成（`/v1/images/generations`）。gpt-image は常に base64 で返り、
  /// DALL·E は `response_format: b64_json` を付けたときだけ base64 で返る。
  @override
  Future<ImageGenerationResponse> generateImage(
    ImageGenerationRequest request,
  ) async {
    final data = await postOpenAiJson(
      url: '$baseUrl/images/generations',
      apiKey: apiKey,
      provider: _provider,
      body: buildOpenAiImageBody(
        request,
        b64ResponseFormat: request.model.startsWith('dall-e'),
      ),
    );
    return parseOpenAiImageResponse(data);
  }

  /// 画像生成モデル（`gpt-image-*` / `dall-e-*` など、ID に `image` を含むか
  /// `dall-e` で始まるもの）。
  @override
  Future<List<AIModel>> getImageModels() async => [
    for (final m in await getModels())
      if (isImageModelId(m.id)) m,
  ];

  /// OpenAI のモデル ID が画像生成モデルか。
  static bool isImageModelId(String id) =>
      id.startsWith('dall-e') || id.contains('image');

  /// 1 回のリクエストで送れる入力の上限（OpenAI の `/v1/embeddings`）。
  @override
  int get maxEmbeddingBatch => 2048;

  /// テキスト埋め込み（`/v1/embeddings`）。
  @override
  Future<EmbeddingResponse> embedBatch(EmbeddingRequest request) async {
    final data = await postOpenAiJson(
      url: '$baseUrl/embeddings',
      apiKey: apiKey,
      provider: _provider,
      body: buildOpenAiEmbeddingBody(request),
    );
    return parseOpenAiEmbeddingResponse(
      data,
      expectedCount: request.inputs.length,
      provider: _provider,
    );
  }

  /// 埋め込みモデル（ID に `embedding` を含むもの）。
  @override
  Future<List<AIModel>> getEmbeddingModels() async => [
    for (final m in await getModels())
      if (m.id.contains('embedding')) m,
  ];

  @override
  Future<bool> validateKey() async {
    try {
      final models = await ModelsCore.listModels(apiKey: apiKey);
      return models.data.isNotEmpty;
    } on LLMException {
      return false;
    }
  }
}
