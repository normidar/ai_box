import 'package:ai_box/ai_box.dart';
import 'package:qwen_box/qwen_box.dart';
import 'package:qwen_box/src/openai_compat.dart';

class Qwen extends LLMAIBase {
  Qwen({required super.apiKey});

  static const _baseUrl =
      'https://dashscope-intl.aliyuncs.com/compatible-mode/v1';
  static const _provider = 'qwen';

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final body = buildOpenAiBody(request, maxTokensKey: 'max_tokens');
    final data = await postOpenAiJson(
      url: '$_baseUrl/chat/completions',
      apiKey: apiKey,
      provider: _provider,
      body: body,
    );
    return parseOpenAiResponse(data);
  }

  @override
  Future<List<AIModel>> getModels() async {
    final modelList = await QwenCore.listModels(apiKey: apiKey);
    return modelList.data.map((e) => AIModel(id: e.id)).toList();
  }

  @override
  Future<bool> validateKey() async {
    try {
      await QwenCore.listModels(apiKey: apiKey);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
