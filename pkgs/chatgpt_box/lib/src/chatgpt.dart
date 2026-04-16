import 'dart:convert';

import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/src/core/chat_completions_core.dart';
import 'package:chatgpt_box/src/core/models_core.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_object_choice_message/chat_completion_object_choice_message.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request/chat_completion_request.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request_message/chat_completion_request_message.dart';

class ChatGPT extends LLMAIBase {
  ChatGPT({required super.apiKey});

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    final chatCompletion = await ChatCompletionsCore.createChatCompletion(
      apiKey: apiKey,
      request: ChatCompletionRequest(
        model: request.model,
        messages: request.messages
            .map(
              (e) => ChatCompletionRequestMessage(
                role: e.role == LLMRole.model ? 'assistant' : e.role.name,
                content: e.content,
              ),
            )
            .toList(),
        maxCompletionTokens: request.maxTokens,
        temperature: request.temperature,
        topP: request.topP,
        stop: request.stop,
        seed: request.seed,
        frequencyPenalty: request.frequencyPenalty,
        presencePenalty: request.presencePenalty,
        responseFormat: request.responseFormat != null
            ? {'type': request.responseFormat!.type.toApiString()}
            : null,
      ),
    );
    final choice = chatCompletion.choices.first;
    return LLMCompletionResponse(
      content: _parseMessage(choice.message),
      inputTokens: chatCompletion.usage.promptTokens,
      outputTokens: chatCompletion.usage.completionTokens,
      finishReason: choice.finishReason,
    );
  }

  LLMContent _parseMessage(ChatCompletionObjectChoiceMessage message) {
    final parts = <LLMContentPart>[];
    final textBuffer = StringBuffer();

    // content: String | List<dynamic> | null
    final raw = message.content;
    if (raw is String && raw.isNotEmpty) {
      textBuffer.write(raw);
      parts.add(LLMTextPart(raw));
    } else if (raw is List<dynamic>) {
      for (final part in raw) {
        final map = part as Map<String, dynamic>;
        switch (map['type'] as String) {
          case 'text':
            final text = map['text'] as String;
            textBuffer.write(text);
            parts.add(LLMTextPart(text));
          case 'image_url':
            final url =
                (map['image_url'] as Map<String, dynamic>)['url'] as String;
            parts.add(LLMImagePart(url));
        }
      }
    }

    // tool_calls
    final toolCalls = message.toolCalls;
    if (toolCalls != null) {
      for (final tc in toolCalls) {
        final fn = tc['function'] as Map<String, dynamic>;
        final argsRaw = fn['arguments'] as String;
        final args =
            argsRaw.isEmpty
                ? <String, dynamic>{}
                : jsonDecode(argsRaw) as Map<String, dynamic>;
        parts.add(
          LLMToolCallPart(
            id: tc['id'] as String,
            name: fn['name'] as String,
            arguments: args,
          ),
        );
      }
    }

    // audio（gpt-4o-audio 系モデル）
    final audio = message.audio;
    if (audio != null) {
      parts.add(
        LLMAudioPart(
          data: audio['data'] as String,
          transcript: audio['transcript'] as String?,
        ),
      );
    }

    if (parts.isEmpty) {
      return const LLMContent(role: LLMRole.model, content: '');
    }
    if (parts.every((p) => p is LLMTextPart)) {
      return LLMContent(role: LLMRole.model, content: textBuffer.toString());
    }
    return LLMContent(
      role: LLMRole.model,
      content: textBuffer.toString(),
      parts: parts,
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
  Future<bool> validateKey() {
    return ModelsCore.listModels(
      apiKey: apiKey,
    ).then((value) => value.data.isNotEmpty);
  }
}
