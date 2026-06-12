import 'package:ai_box/src/ai_base.dart';
import 'package:ai_box/src/content.dart';
import 'package:ai_box/src/request.dart';
import 'package:ai_box/src/response.dart';
import 'package:ai_box/src/stream.dart';

/// すべての LLM プロバイダー（ChatGPT / Claude / Gemini など）が
/// 継承すべき抽象クラス。
///
/// 実装すべきは [completions] / [getModels] / [validateKey] の 3 つ。
/// [chat] / [chatWithStrings] / [generateText] / [completionsStream] などの
/// 便利メソッドはここで提供される。
abstract class LLMAIBase extends AIBase implements LLMAIInterface {
  const LLMAIBase({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  /// ストリーミング応答。
  ///
  /// 既定実装は [completions] を呼び、結果を 1 チャンクとして流す
  /// （非インクリメンタルなフォールバック）。各プロバイダーパッケージは
  /// 真の SSE ストリーミングでオーバーライドしている。
  @override
  Stream<LLMStreamChunk> completionsStream(
    LLMCompletionRequest request,
  ) async* {
    final res = await completions(request);
    yield LLMStreamChunk(
      delta: res.content.text,
      reasoningDelta: res.content.reasoning,
      parts: res.content.parts,
      finishReason: res.finishReason,
      usage: res.usage,
    );
  }

  /// [completions] の簡易ラッパー。
  Future<LLMCompletionResponse> chat({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    List<LLMTool>? tools,
    LLMToolChoice? toolChoice,
    LLMResponseFormat? responseFormat,
  }) {
    return completions(
      LLMCompletionRequest(
        model: model,
        messages: messages,
        maxTokens: maxTokens,
        tools: tools,
        toolChoice: toolChoice,
        responseFormat: responseFormat,
      ),
    );
  }

  /// [completionsStream] の簡易ラッパー（[chat] のストリーミング版）。
  Stream<LLMStreamChunk> chatStream({
    required String model,
    required List<LLMContent> messages,
    int? maxTokens,
    List<LLMTool>? tools,
    LLMToolChoice? toolChoice,
    LLMResponseFormat? responseFormat,
  }) {
    return completionsStream(
      LLMCompletionRequest(
        model: model,
        messages: messages,
        maxTokens: maxTokens,
        tools: tools,
        toolChoice: toolChoice,
        responseFormat: responseFormat,
      ),
    );
  }

  /// ユーザーとモデルが交互に発言する会話を文字列リストで渡す簡易ラッパー。
  Future<String> chatWithStrings({
    required String model,
    required List<String> messages,
    int? maxTokens,
  }) {
    var nowAuthor = LLMRole.user;
    final nowMessages = <LLMContent>[];

    for (final message in messages) {
      nowMessages.add(LLMContent.text(nowAuthor, message));
      nowAuthor = nowAuthor == LLMRole.user ? LLMRole.model : LLMRole.user;
    }

    return chat(
      model: model,
      messages: nowMessages,
      maxTokens: maxTokens,
    ).then((value) => value.content.text);
  }

  /// 単一メッセージを送って返答文字列を得る最小ラッパー。
  Future<String> generateText({
    required String model,
    required String message,
    int? maxTokens,
  }) {
    return chatWithStrings(
      model: model,
      messages: [message],
      maxTokens: maxTokens,
    );
  }

  /// 単一プロンプトの応答をテキストでストリーミングする。
  Stream<String> generateTextStream({
    required String model,
    required String message,
    int? maxTokens,
  }) async* {
    final req = LLMCompletionRequest(
      model: model,
      messages: [LLMContent.user(message)],
      maxTokens: maxTokens,
    );
    await for (final chunk in completionsStream(req)) {
      if (chunk.delta.isNotEmpty) yield chunk.delta;
    }
  }

  /// 画像付きの簡易プロンプト。[images] に [LLMImagePart] を渡すだけで使える。
  ///
  /// ```dart
  /// final answer = await ai.askWithImages(
  ///   model: 'gpt-4o',
  ///   prompt: 'この画像を説明して',
  ///   images: [LLMImagePart.bytes(bytes, mimeType: 'image/png')],
  /// );
  /// ```
  Future<String> askWithImages({
    required String model,
    required String prompt,
    required List<LLMImagePart> images,
    int? maxTokens,
  }) {
    return chat(
      model: model,
      messages: [LLMContent.user(prompt, attachments: images)],
      maxTokens: maxTokens,
    ).then((v) => v.content.text);
  }
}

/// ai_box の LLM プロバイダーが実装すべき最小インターフェース。
abstract class LLMAIInterface {
  Future<LLMCompletionResponse> completions(LLMCompletionRequest request);

  Stream<LLMStreamChunk> completionsStream(LLMCompletionRequest request);

  Future<List<AIModel>> getModels();

  Future<List<String>> getModelIds();

  Future<bool> validateKey();
}
