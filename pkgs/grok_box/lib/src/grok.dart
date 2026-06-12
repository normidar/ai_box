import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:grok_box/grok_box.dart';

class Grok extends LLMAIBase {
  Grok({required super.apiKey});

  static const _url = 'https://api.x.ai/v1/chat/completions';
  static const _provider = 'grok';

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
