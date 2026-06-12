import 'package:ai_box/ai_box.dart';
import 'package:ai_box/openai_compat.dart';
import 'package:chatgpt_box/src/core/models_core.dart';

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

  /// 真の SSE ストリーミング。テキストは増分で流れ、最終チャンクに
  /// 完全なパーツ・完了理由・トークン使用量が入る。
  @override
  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request) {
    return streamOpenAiCompletions(
      url: _url,
      apiKey: apiKey,
      provider: _provider,
      request: request,
      maxTokensKey: 'max_completion_tokens',
      includeUsage: true,
    );
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
