// OpenAI 互換 Chat Completions API のリクエスト構築・レスポンス解析ヘルパー。
//
// 画像・音声・ファイル・ツール呼び出し・構造化出力を raw JSON として
// 組み立てる（freezed のコード生成に依存しない）。
//
// このファイルは src/ 配下のパッケージ内部実装であり、公開 API には含めない。
//
// NOTE: 同名ファイルが OpenAI 互換の各プロバイダーパッケージ
// （chatgpt_box / deepseek_box / grok_box / minimax_box / openrouter_box）に
// 複製されている。修正する際は全パッケージの同名ファイルへ反映すること。
import 'dart:convert';

import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';

/// [LLMCompletionRequest] を OpenAI 互換のリクエストボディに変換する。
Map<String, dynamic> buildOpenAiBody(
  LLMCompletionRequest request, {
  required String maxTokensKey,
}) {
  final body = <String, dynamic>{
    'model': request.model,
    'messages': _toOpenAiMessages(request.messages),
  };
  if (request.maxTokens != null) body[maxTokensKey] = request.maxTokens;
  if (request.temperature != null) body['temperature'] = request.temperature;
  if (request.topP != null) body['top_p'] = request.topP;
  if (request.stop != null) body['stop'] = request.stop;
  if (request.seed != null) body['seed'] = request.seed;
  if (request.frequencyPenalty != null) {
    body['frequency_penalty'] = request.frequencyPenalty;
  }
  if (request.presencePenalty != null) {
    body['presence_penalty'] = request.presencePenalty;
  }
  final rf = _toOpenAiResponseFormat(request.responseFormat);
  if (rf != null) body['response_format'] = rf;
  final tools = request.tools;
  if (tools != null && tools.isNotEmpty) {
    body['tools'] = [
      for (final t in tools)
        {
          'type': 'function',
          'function': {
            'name': t.name,
            'description': t.description,
            'parameters': t.parameters,
          },
        },
    ];
    final tc = _toOpenAiToolChoice(request.toolChoice);
    if (tc != null) body['tool_choice'] = tc;
  }
  return body;
}

List<Map<String, dynamic>> _toOpenAiMessages(List<LLMContent> messages) {
  final out = <Map<String, dynamic>>[];
  for (final m in messages) {
    final role = switch (m.role) {
      LLMRole.model => 'assistant',
      LLMRole.system => 'system',
      LLMRole.user => 'user',
    };

    // ツール実行結果は role: 'tool' の独立メッセージとして送る。
    final toolResults = m.parts.whereType<LLMToolResultPart>().toList();
    if (toolResults.isNotEmpty) {
      for (final tr in toolResults) {
        out.add({
          'role': 'tool',
          'tool_call_id': tr.toolCallId,
          'content': tr.content,
        });
      }
      continue;
    }

    // assistant のツール呼び出しエコー。
    final toolCalls = m.parts.whereType<LLMToolCallPart>().toList();
    if (toolCalls.isNotEmpty) {
      out.add({
        'role': 'assistant',
        if (m.text.isNotEmpty) 'content': m.text,
        'tool_calls': [
          for (final tc in toolCalls)
            {
              'id': tc.id,
              'type': 'function',
              'function': {
                'name': tc.name,
                'arguments': jsonEncode(tc.arguments),
              },
            },
        ],
      });
      continue;
    }

    final hasMedia = m.parts.any(
      (p) => p is LLMImagePart || p is LLMAudioPart || p is LLMFilePart,
    );
    if (!hasMedia) {
      out.add({'role': role, 'content': m.text});
      continue;
    }

    out.add({'role': role, 'content': _toOpenAiContentArray(m.parts)});
  }
  return out;
}

List<Map<String, dynamic>> _toOpenAiContentArray(List<LLMContentPart> parts) {
  final arr = <Map<String, dynamic>>[];
  for (final p in parts) {
    if (p is LLMTextPart) {
      arr.add({'type': 'text', 'text': p.text});
    } else if (p is LLMImagePart) {
      arr.add({
        'type': 'image_url',
        'image_url': {'url': p.asUrlOrDataUri},
      });
    } else if (p is LLMAudioPart) {
      arr.add({
        'type': 'input_audio',
        'input_audio': {
          'data': p.base64Data ?? '',
          'format': _audioFormat(p.mimeType),
        },
      });
    } else if (p is LLMFilePart) {
      arr.add({
        'type': 'file',
        'file': {
          if (p.filename != null) 'filename': p.filename,
          'file_data': _fileDataField(p),
        },
      });
    }
  }
  return arr;
}

String _fileDataField(LLMFilePart f) {
  if (f.hasBytes) {
    final mime = f.mimeType ?? 'application/octet-stream';
    return 'data:$mime;base64,${f.base64Data}';
  }
  return f.url ?? '';
}

String _audioFormat(String? mimeType) {
  if (mimeType == null) return 'wav';
  if (mimeType.contains('mp3') || mimeType.contains('mpeg')) return 'mp3';
  if (mimeType.contains('wav')) return 'wav';
  return mimeType.split('/').last;
}

Map<String, dynamic>? _toOpenAiResponseFormat(LLMResponseFormat? f) {
  if (f == null) return null;
  switch (f.type) {
    case LLMResponseFormatType.text:
      return {'type': 'text'};
    case LLMResponseFormatType.jsonObject:
      return {'type': 'json_object'};
    case LLMResponseFormatType.jsonSchema:
      return {
        'type': 'json_schema',
        'json_schema': {
          'name': f.schemaName,
          'schema': f.schema,
          'strict': f.strict,
        },
      };
  }
}

dynamic _toOpenAiToolChoice(LLMToolChoice? tc) {
  if (tc == null) return null;
  final toolName = tc.toolName;
  if (toolName != null) {
    return {
      'type': 'function',
      'function': {'name': toolName},
    };
  }
  switch (tc.mode) {
    case LLMToolChoiceMode.auto:
      return 'auto';
    case LLMToolChoiceMode.none:
      return 'none';
    case LLMToolChoiceMode.any:
      return 'required';
  }
}

/// OpenAI 互換のレスポンスボディを [LLMCompletionResponse] に変換する。
LLMCompletionResponse parseOpenAiResponse(Map<String, dynamic> data) {
  final choices = (data['choices'] as List?) ?? const [];
  final choice = choices.isNotEmpty
      ? choices.first as Map<String, dynamic>
      : const <String, dynamic>{};
  final message =
      (choice['message'] as Map<String, dynamic>?) ?? const <String, dynamic>{};
  final parts = <LLMContentPart>[];

  final reasoning = message['reasoning_content'] ?? message['reasoning'];
  if (reasoning is String && reasoning.isNotEmpty) {
    parts.add(LLMReasoningPart(reasoning));
  }

  final rawContent = message['content'];
  if (rawContent is String && rawContent.isNotEmpty) {
    parts.add(LLMTextPart(rawContent));
  } else if (rawContent is List) {
    _appendOpenAiContentParts(rawContent, parts);
  }

  // 生成画像（OpenRouter は message.images で返す）。
  final images = message['images'];
  if (images is List) {
    for (final im in images) {
      if (im is! Map<String, dynamic>) continue;
      final imageUrl = im['image_url'];
      final url = imageUrl is Map<String, dynamic> ? imageUrl['url'] : null;
      if (url is String && url.isNotEmpty) {
        parts.add(LLMImagePart.dataUri(url));
      }
    }
  }

  final toolCalls = message['tool_calls'];
  if (toolCalls is List) {
    for (final tc in toolCalls) {
      if (tc is Map<String, dynamic>) {
        final fn = tc['function'];
        final fnMap =
            fn is Map<String, dynamic> ? fn : const <String, dynamic>{};
        parts.add(
          LLMToolCallPart(
            id: (tc['id'] ?? '').toString(),
            name: (fnMap['name'] ?? '').toString(),
            arguments: _decodeArgs(fnMap['arguments']),
          ),
        );
      }
    }
  }

  final audio = message['audio'];
  if (audio is Map<String, dynamic>) {
    final adata = audio['data'];
    if (adata is String && adata.isNotEmpty) {
      parts.add(
        LLMAudioPart.base64(adata, transcript: audio['transcript'] as String?),
      );
    }
  }

  final usage =
      (data['usage'] as Map<String, dynamic>?) ?? const <String, dynamic>{};
  return LLMCompletionResponse(
    content: LLMContent(role: LLMRole.model, parts: parts),
    usage: _parseOpenAiUsage(usage),
    finishReason: LLMFinishReason.parse(choice['finish_reason'] as String?),
    model: data['model'] as String?,
    id: data['id'] as String?,
  );
}

void _appendOpenAiContentParts(List<dynamic> items, List<LLMContentPart> out) {
  for (final item in items) {
    if (item is! Map<String, dynamic>) continue;
    final type = item['type'];
    if (type == 'text' && item['text'] is String) {
      out.add(LLMTextPart(item['text'] as String));
    } else if (type == 'image_url') {
      final url = (item['image_url'] as Map<String, dynamic>?)?['url'];
      if (url is String) out.add(LLMImagePart.dataUri(url));
    }
  }
}

Map<String, dynamic> _decodeArgs(Object? argsRaw) {
  if (argsRaw is Map<String, dynamic>) return argsRaw;
  if (argsRaw is String && argsRaw.isNotEmpty) {
    try {
      final decoded = jsonDecode(argsRaw);
      if (decoded is Map<String, dynamic>) return decoded;
    } on FormatException {
      return <String, dynamic>{};
    }
  }
  return <String, dynamic>{};
}

LLMUsage _parseOpenAiUsage(Map<String, dynamic> usage) {
  final promptDetails = usage['prompt_tokens_details'] as Map<String, dynamic>?;
  final completionDetails =
      usage['completion_tokens_details'] as Map<String, dynamic>?;
  return LLMUsage(
    inputTokens: (usage['prompt_tokens'] as num?)?.toInt() ?? 0,
    outputTokens: (usage['completion_tokens'] as num?)?.toInt() ?? 0,
    cachedInputTokens: (promptDetails?['cached_tokens'] as num?)?.toInt(),
    reasoningTokens: (completionDetails?['reasoning_tokens'] as num?)?.toInt(),
  );
}

/// OpenAI 互換 API に POST し、JSON ボディを返す。失敗時は [LLMException]。
///
/// [extraHeaders] で OpenRouter 推奨の `HTTP-Referer` / `X-Title` などを
/// 追加できる。
Future<Map<String, dynamic>> postOpenAiJson({
  required String url,
  required String apiKey,
  required String provider,
  required Map<String, dynamic> body,
  Map<String, String> extraHeaders = const {},
}) async {
  try {
    final response = await Api.post(
      requestAcc: PostRequestAcc(
        url: url,
        headers: RestHeaders({
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
          ...extraHeaders,
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
        provider: provider,
        body: mapData ?? respBody,
      );
    }
    if (mapData != null) return mapData;
    throw LLMUnknownException(
      'Unexpected response body from $provider',
      provider: provider,
      raw: respBody,
    );
  } on LLMException {
    rethrow;
  } catch (e) {
    throw LLMNetworkException(
      'Network request failed',
      provider: provider,
      raw: e,
    );
  }
}
