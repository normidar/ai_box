import 'package:ai_box/ai_box.dart';
import 'package:mistral_box/mistral_box.dart';
import 'package:mistral_box/src/openai_compat.dart';

class Mistral extends LLMAIBase {
  Mistral({required super.apiKey});

  static const _url = 'https://api.mistral.ai/v1/chat/completions';
  static const _provider = 'mistral';

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
    final modelList = await MistralCore.listModels(apiKey: apiKey);
    return modelList.data.map((e) => AIModel(id: e.id)).toList();
  }

  @override
  Future<bool> validateKey() async {
    try {
      await MistralCore.listModels(apiKey: apiKey);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
