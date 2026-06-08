import 'package:ai_box/ai_box.dart';
import 'package:grok_box/grok_box.dart';
import 'package:grok_box/src/openai_compat.dart';

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
    final apiKeyInfo = await GrokCore.getApiKeyInfo(apiKey: apiKey);
    return !apiKeyInfo.teamBlocked &&
        !apiKeyInfo.apiKeyDisabled &&
        !apiKeyInfo.apiKeyBlocked;
  }
}
