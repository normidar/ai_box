import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';
import 'package:claude_box/src/claude_core.dart';
import 'package:claude_box/src/freezed/message/request/message_request/message_request.dart';
import 'package:claude_box/src/freezed/message/response/message_response.dart';
import 'package:claude_box/src/freezed/models/list_models_response/list_models_response.dart';
import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:claude_box/src/freezed/models/request_header/request_header.dart';

class Claude extends LLMAIBase {
  Claude({required super.apiKey});

  /// Claude API は max_tokens が必須のため、未指定時に使うデフォルト値。
  static const int defaultMaxTokens = 8000;

  static const String _version = '2023-06-01';

  RequestHeader get requestHeader =>
      RequestHeader(apiKey: apiKey, anthropicVersion: _version);

  @override
  Future<LLMCompletionResponse> completions(
    LLMCompletionRequest request,
  ) async {
    // Claude では system ロールのメッセージを system フィールドに分離する。
    final system = request.messages
        .where((e) => e.role == LLMRole.system)
        .map((e) => e.text)
        .where((t) => t.isNotEmpty)
        .join('\n');
    final convo =
        request.messages.where((e) => e.role != LLMRole.system).toList();

    final body = <String, dynamic>{
      'model': request.model,
      'messages': _toClaudeMessages(convo),
      'max_tokens': request.maxTokens ?? defaultMaxTokens,
      if (system.isNotEmpty) 'system': system,
      if (request.temperature != null) 'temperature': request.temperature,
      if (request.topP != null) 'top_p': request.topP,
      if (request.stop != null) 'stop_sequences': request.stop,
    };
    final tools = request.tools;
    if (tools != null && tools.isNotEmpty) {
      body['tools'] = [
        for (final t in tools)
          {
            'name': t.name,
            'description': t.description,
            'input_schema': t.parameters,
          },
      ];
      final tc = _toClaudeToolChoice(request.toolChoice);
      if (tc != null) body['tool_choice'] = tc;
    }

    final data = await _postClaude(
      apiKey: apiKey,
      version: _version,
      body: body,
    );
    return _parseClaudeResponse(data);
  }

  Future<MessageResponse> createMessage({
    required MessageRequest messageRequest,
  }) async {
    return ClaudeCore.createMessage(
      requestHeader: requestHeader,
      messageRequest: messageRequest,
    );
  }

  Future<String?> easyTalk({required String message, int? maxTokens}) async {
    try {
      final res = await completions(
        LLMCompletionRequest(
          model: 'claude-sonnet-4-20250514',
          messages: [LLMContent.user(message)],
          maxTokens: maxTokens ?? defaultMaxTokens,
        ),
      );
      return res.content.text;
    } on LLMException catch (_) {
      return null;
    }
  }

  Future<ModelInfo> getAModel({required String modelId}) async {
    return ClaudeCore.getAModel(requestHeader: requestHeader, modelId: modelId);
  }

  @override
  Future<List<AIModel>> getModels() async {
    final response = await listModels();
    return response.data
        .map(
          (e) => AIModel(
            id: e.id,
            name: e.displayName,
            created: DateTime.tryParse(e.createdAt),
          ),
        )
        .toList();
  }

  Future<ListModelsResponse> listModels() async {
    return ClaudeCore.listModels(requestHeader: requestHeader);
  }

  @override
  Future<bool> validateKey() {
    return listModels().then((value) => value.data.isNotEmpty);
  }
}

List<Map<String, dynamic>> _toClaudeMessages(List<LLMContent> messages) {
  final out = <Map<String, dynamic>>[];
  for (final m in messages) {
    final role = m.role == LLMRole.model ? 'assistant' : 'user';
    final blocks = <Map<String, dynamic>>[];
    for (final p in m.parts) {
      if (p is LLMTextPart) {
        if (p.text.isNotEmpty) blocks.add({'type': 'text', 'text': p.text});
      } else if (p is LLMImagePart) {
        blocks.add(_claudeImageBlock(p));
      } else if (p is LLMFilePart) {
        blocks.add(_claudeDocumentBlock(p));
      } else if (p is LLMToolResultPart) {
        blocks.add({
          'type': 'tool_result',
          'tool_use_id': p.toolCallId,
          'content': p.content,
          if (p.isError) 'is_error': true,
        });
      } else if (p is LLMToolCallPart) {
        blocks.add({
          'type': 'tool_use',
          'id': p.id,
          'name': p.name,
          'input': p.arguments,
        });
      }
      // 音声・推論・コード実行パーツは Claude 入力では無視する。
    }
    if (blocks.isEmpty) continue;
    out.add({'role': role, 'content': blocks});
  }
  return out;
}

Map<String, dynamic> _claudeImageBlock(LLMImagePart img) {
  if (img.isUrl) {
    return {
      'type': 'image',
      'source': {'type': 'url', 'url': img.url},
    };
  }
  return {
    'type': 'image',
    'source': {
      'type': 'base64',
      'media_type': img.mimeType ?? 'image/png',
      'data': img.base64Data,
    },
  };
}

Map<String, dynamic> _claudeDocumentBlock(LLMFilePart f) {
  if (f.hasBytes) {
    return {
      'type': 'document',
      'source': {
        'type': 'base64',
        'media_type': f.mimeType ?? 'application/pdf',
        'data': f.base64Data,
      },
    };
  }
  return {
    'type': 'document',
    'source': {'type': 'url', 'url': f.url},
  };
}

dynamic _toClaudeToolChoice(LLMToolChoice? tc) {
  if (tc == null) return null;
  final toolName = tc.toolName;
  if (toolName != null) return {'type': 'tool', 'name': toolName};
  switch (tc.mode) {
    case LLMToolChoiceMode.auto:
      return {'type': 'auto'};
    case LLMToolChoiceMode.none:
      return null;
    case LLMToolChoiceMode.any:
      return {'type': 'any'};
  }
}

LLMCompletionResponse _parseClaudeResponse(Map<String, dynamic> data) {
  final blocks = (data['content'] as List?) ?? const [];
  final parts = <LLMContentPart>[];
  for (final b in blocks) {
    if (b is! Map<String, dynamic>) continue;
    switch (b['type']) {
      case 'text':
        parts.add(LLMTextPart((b['text'] ?? '').toString()));
      case 'thinking':
        parts.add(
          LLMReasoningPart(
            (b['thinking'] ?? '').toString(),
            signature: b['signature'] as String?,
          ),
        );
      case 'tool_use':
        parts.add(
          LLMToolCallPart(
            id: (b['id'] ?? '').toString(),
            name: (b['name'] ?? '').toString(),
            arguments:
                (b['input'] as Map<String, dynamic>?) ?? <String, dynamic>{},
          ),
        );
    }
  }
  final usage =
      (data['usage'] as Map<String, dynamic>?) ?? const <String, dynamic>{};
  return LLMCompletionResponse(
    content: LLMContent(role: LLMRole.model, parts: parts),
    usage: LLMUsage(
      inputTokens: (usage['input_tokens'] as num?)?.toInt() ?? 0,
      outputTokens: (usage['output_tokens'] as num?)?.toInt() ?? 0,
      cachedInputTokens: (usage['cache_read_input_tokens'] as num?)?.toInt(),
    ),
    finishReason: LLMFinishReason.parse(data['stop_reason'] as String?),
    model: data['model'] as String?,
    id: data['id'] as String?,
  );
}

Future<Map<String, dynamic>> _postClaude({
  required String apiKey,
  required String version,
  required Map<String, dynamic> body,
}) async {
  try {
    final response = await Api.post(
      requestAcc: PostRequestAcc(
        url: 'https://api.anthropic.com/v1/messages',
        headers: RestHeaders({
          'x-api-key': apiKey,
          'anthropic-version': version,
          'content-type': 'application/json',
        }),
        body: JsonRequestBody(body),
      ),
    );
    final statusCode = int.tryParse(response.statusCode) ?? 0;
    final respBody = response.body;
    Map<String, dynamic>? mapData;
    if (respBody is MapJsonResponseBody) {
      mapData = respBody.data;
    }
    if (statusCode < 200 || statusCode >= 300) {
      throw LLMException.fromHttp(
        statusCode,
        provider: 'claude',
        body: mapData ?? respBody,
      );
    }
    if (mapData != null) return mapData;
    throw LLMUnknownException(
      'Unexpected response body from claude',
      provider: 'claude',
      raw: respBody,
    );
  } on LLMException {
    rethrow;
  } catch (e) {
    throw LLMNetworkException(
      'Network request failed',
      provider: 'claude',
      raw: e,
    );
  }
}
