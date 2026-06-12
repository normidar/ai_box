import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/src/core/models_core.dart';
import 'package:chatgpt_box/src/openai_compat.dart';

class ChatGPT extends LLMAIBase {
  ChatGPT({required super.apiKey});

  static const _url = 'https://api.openai.com/v1/chat/completions';
  static const _provider = 'openai';

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
