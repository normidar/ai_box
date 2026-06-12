import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:openrouter_box/src/core/openrouter_core.dart';
import 'package:openrouter_box/src/models/openrouter_key_info.dart';
import 'package:openrouter_box/src/models/openrouter_model.dart';

/// OpenRouter（`https://openrouter.ai`）プロバイダー。
///
/// OpenRouter は OpenAI 互換の単一エンドポイントから、OpenAI・Anthropic・
/// Google・Meta など多数のモデルへアクセスできるルーターサービス。
/// モデル ID は `openai/gpt-4o-mini` のように `provider/model` 形式で指定する。
///
/// ```dart
/// final ai = OpenRouter(apiKey: 'sk-or-...');
/// final answer = await ai.generateText(
///   model: 'openai/gpt-4o-mini',
///   message: 'こんにちは',
/// );
/// ```
///
/// [referer] / [title] を渡すと、OpenRouter のランキング用ヘッダ
/// （`HTTP-Referer` / `X-Title`）が付与される（任意）。
class OpenRouter extends LLMAIBase {
  OpenRouter({required super.apiKey, this.referer, this.title});

  static const _url = '${OpenRouterCore.baseUrl}/chat/completions';
  static const _provider = 'openrouter';

  /// ランキング用の参照元 URL（`HTTP-Referer`、任意）。
  final String? referer;

  /// ランキング用のアプリ名（`X-Title`、任意）。
  final String? title;

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
      extraHeaders: _rankingHeaders(),
    );
    return parseOpenAiResponse(data);
  }

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由・トークン使用量（OpenRouter は最終チャンクで
  /// 自動付与）が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    return streamOpenAiCompletions(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      request: request,
      maxTokensKey: 'max_tokens',
      extraHeaders: _rankingHeaders(),
    );
  }

  @override
  Future<List<AIModel>> getModels() async {
    final models = await OpenRouterCore.listModels(apiKey: apiKey);
    return models.map((e) => e.toAIModel()).toList();
  }

  /// OpenRouter のリッチなモデル情報（価格・モダリティなど）を取得する。
  ///
  /// [getModels] が返す共通の [AIModel] よりも詳細な情報が必要なときに使う。
  Future<List<OpenRouterModel>> listOpenRouterModels() {
    return OpenRouterCore.listModels(apiKey: apiKey);
  }

  /// API キーの情報（利用額・上限など）を取得する。
  Future<OpenRouterKeyInfo> getKeyInfo() {
    return OpenRouterCore.getKeyInfo(apiKey: apiKey);
  }

  @override
  Future<bool> validateKey() async {
    try {
      await OpenRouterCore.getKeyInfo(apiKey: apiKey);
      return true;
    } on LLMException {
      return false;
    }
  }

  Map<String, String> _rankingHeaders() {
    final headers = <String, String>{};
    final r = referer;
    final t = title;
    if (r != null) headers['HTTP-Referer'] = r;
    if (t != null) headers['X-Title'] = t;
    return headers;
  }
}
