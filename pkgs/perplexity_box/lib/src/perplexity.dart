import 'package:ai_box/ai_box.dart';
import 'package:perplexity_box/src/openai_compat.dart';

class Perplexity extends LLMAIBase {
  Perplexity({required super.apiKey});

  static const _url = 'https://api.perplexity.ai/chat/completions';
  static const _provider = 'perplexity';

  /// Perplexity が公開している既知の Sonar モデル。
  ///
  /// Perplexity は OpenAI 互換の `/models` 一覧エンドポイントを提供して
  /// いないため、ドキュメント記載のモデルを静的に返す。
  /// https://docs.perplexity.ai/getting-started/models
  static const _knownModels = <String>[
    'sonar',
    'sonar-pro',
    'sonar-reasoning',
    'sonar-reasoning-pro',
    'sonar-deep-research',
  ];

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

  @override
  Future<List<AIModel>> getModels() async {
    return _knownModels.map((id) => AIModel(id: id)).toList();
  }

  @override
  Future<bool> validateKey() async {
    // Perplexity には軽量な検証用エンドポイントが無いため、最小の補完
    // リクエストを送って認証エラー（401/403）かどうかで判定する。
    try {
      await postOpenAiJson(
        url: _url,
        apiKey: apiKey,
        provider: _provider,
        body: {
          'model': 'sonar',
          'messages': [
            {'role': 'user', 'content': 'hi'},
          ],
          'max_tokens': 1,
        },
      );
      return true;
    } on LLMAuthException {
      return false;
    } on LLMException catch (_) {
      // 認証は通ったが別の理由（残高不足・レート制限など）で失敗した
      // 場合、キー自体は有効とみなす。
      return true;
    }
  }
}
