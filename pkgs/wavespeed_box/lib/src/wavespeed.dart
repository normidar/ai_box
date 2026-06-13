import 'package:ai_box/ai_box.dart';
import 'package:wavespeed_box/src/openai_compat.dart';
import 'package:wavespeed_box/wavespeed_box.dart';

class WaveSpeed extends LLMAIBase {
  WaveSpeed({required super.apiKey});

  static const _url = 'https://llm.wavespeed.ai/v1/chat/completions';
  static const _provider = 'wavespeed';

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
    final modelList = await WaveSpeedCore.listModels(apiKey: apiKey);
    return modelList.data.map((e) => AIModel(id: e.id)).toList();
  }

  @override
  Future<bool> validateKey() async {
    try {
      await WaveSpeedCore.listModels(apiKey: apiKey);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
