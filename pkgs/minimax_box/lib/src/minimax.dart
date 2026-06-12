import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:minimax_box/minimax_box.dart';

class MiniMax extends LLMAIBase {
  MiniMax({required super.apiKey});

  static const _url = 'https://api.minimax.io/v1/chat/completions';
  static const _provider = 'minimax';

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
    final modelList = await MiniMaxCore.listModels(apiKey: apiKey);
    return modelList.data.map((e) => AIModel(id: e.id)).toList();
  }

  @override
  Future<bool> validateKey() async {
    try {
      await MiniMaxCore.listModels(apiKey: apiKey);
      return true;
    } on LLMException {
      return false;
    }
  }
}
