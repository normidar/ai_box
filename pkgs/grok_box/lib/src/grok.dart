import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:grok_box/grok_box.dart';

/// xAI Grok プロバイダー（チャット・画像生成。埋め込み API は無い）。
class Grok extends LLMAIBase with ImageGenerator {
  Grok({required super.apiKey, this.baseUrl = defaultBaseUrl});

  /// xAI API の既定のベース URL。
  static const defaultBaseUrl = 'https://api.x.ai/v1';
  static const _provider = 'grok';

  /// API のベース URL（テストで差し替える）。モデル一覧・キー情報は常に
  /// xAI へ問い合わせる。
  final String baseUrl;

  String get _url => '$baseUrl/chat/completions';

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final body = buildOpenAiBody(request, maxTokensKey: 'max_tokens');
    final data = await postOpenAiJson(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      body: body,
    );
    return parseOpenAiResponse(data);
  }

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    return streamOpenAiCompletions(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      request: request,
      maxTokensKey: 'max_tokens',
    );
  }

  @override
  Future<List<AIModel>> getModels() async {
    final modelList = await GrokCore.listModels(apiKey: apiKey);
    return modelList.data
        .map(
          (e) => AIModel(
            id: e.id,
            created: DateTime.fromMillisecondsSinceEpoch(e.created * 1000),
          ),
        )
        .toList();
  }

  /// 画像生成（`/v1/images/generations`）。既定は URL で返るので base64 を
  /// 求める（xAI の画像は JPEG）。大きさは `size` ではなく `aspect_ratio`。
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
        b64ResponseFormat: true,
        sendSize: false,
        sendAspectRatio: true,
      ),
    );
    return parseOpenAiImageResponse(data, defaultMimeType: 'image/jpeg');
  }

  /// 画像生成モデル。`/v1/image-generation-models` を使い、取れなければ
  /// モデル一覧のうち ID に `image` を含むもの。
  @override
  Future<List<AIModel>> getImageModels() async {
    try {
      final models = parseModelList(
        await getOpenAiJson(
          url: '$defaultBaseUrl/image-generation-models',
          apiKey: apiKey,
          provider: _provider,
        ),
      );
      if (models.isNotEmpty) return models;
    } on LLMException {
      // 下の一覧で代用する。
    }
    return [
      for (final m in await getModels())
        if (m.id.contains('image')) m,
    ];
  }

  @override
  Future<bool> validateKey() async {
    try {
      final apiKeyInfo = await GrokCore.getApiKeyInfo(apiKey: apiKey);
      return !apiKeyInfo.teamBlocked &&
          !apiKeyInfo.apiKeyDisabled &&
          !apiKeyInfo.apiKeyBlocked;
    } on LLMException {
      return false;
    }
  }
}
