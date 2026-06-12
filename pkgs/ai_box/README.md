# ai_box

[![GitHub](https://img.shields.io/github/license/normidar/ai_box.svg)](https://github.com/normidar/ai_box/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/ai_box.svg)](https://pub.dartlang.org/packages/ai_box)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/ai_box.svg)](https://github.com/normidar/ai_box/stargazers)
[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/normidar.svg?style=social&label=Follow%20%40normidar)](https://twitter.com/normidar)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

This package provides a base class and test utilities for all AI provider classes that inherit from `LLMAIBase`.

## LLMAIBase

An abstract class that all AI providers (such as ChatGPT, Claude, Gemini, etc.) should inherit from.

### Required Methods

- `completions()`: Chat completion
- `getModels()`: Get a list of available models
- `validateKey()`: Validate the API key

### Provided Utility Methods

- `chat()` / `chatStream()`: Chat with structured messages
- `chatWithStrings()`: Chat with an array of strings
- `generateText()`: Simple text generation
- `generateTextStream()`: Stream text output
- `askWithImages()`: One-shot prompt with images

## Multimodal input

Pass images, audio, or files as `LLMContentPart`s on any message. The same
abstraction works across every provider — the provider converts it to the
right wire format (OpenAI content arrays, Claude content blocks, Gemini
`inlineData` / `fileData`).

```dart
import 'dart:typed_data';
import 'package:ai_box/ai_box.dart';

final res = await ai.chat(
  model: 'gpt-4o',
  messages: [
    LLMContent.user('Describe these', attachments: [
      LLMImagePart.bytes(pngBytes, mimeType: 'image/png'),
      LLMImagePart.url('https://example.com/photo.jpg'),
      LLMFilePart.bytes(pdfBytes, mimeType: 'application/pdf'),
    ]),
  ],
);
print(res.text);
```

### Just drop in a `File` (`dart:io`)

```dart
import 'package:ai_box/io.dart';

final msg = LLMContent.user('What is in these?', attachments: [
  File('photo.png').toImagePart(),
  File('report.pdf').toFilePart(),
  File('memo.mp3').toAudioPart(),
]);
```

`ai_box` core stays platform-agnostic (no `dart:io`); the `File` helpers live
in the separate `package:ai_box/io.dart` import.

## Output: sealed parts cover every case

`LLMContent.parts` is a list of the sealed `LLMContentPart`, so a `switch`
is exhaustive:

```dart
for (final part in res.content.parts) {
  switch (part) {
    case LLMTextPart(:final text): print(text);
    case LLMImagePart(): saveImage(part.bytes);      // generated image bytes
    case LLMAudioPart(): saveAudio(part.bytes);      // generated audio bytes
    case LLMFilePart(): saveFile(part.bytes);
    case LLMToolCallPart(:final name): callTool(name, part.arguments);
    case LLMToolResultPart(): break;
    case LLMReasoningPart(:final text): logThinking(text);
    case LLMCodeExecutionPart(): break;
    case LLMCodeExecutionResultPart(): break;
  }
}
```

Convenience getters: `res.text`, `res.content.images`, `res.content.audioList`,
`res.content.files`, `res.toolCalls`, `res.content.reasoning`.

`res.finishReason` is the normalized `LLMFinishReason` enum
(`stop` / `length` / `toolCalls` / `contentFilter` / `other`), and
`res.usage` carries `inputTokens` / `outputTokens` / `cachedInputTokens` /
`reasoningTokens`.

## Error handling: sealed `LLMException`

Every provider normalizes failures into a sealed `LLMException`:

```dart
try {
  await ai.generateText(model: '...', message: 'hi');
} on LLMException catch (e) {
  switch (e) {
    case LLMAuthException(): // 401 / 403
    case LLMRateLimitException(): // 429
    case LLMInvalidRequestException(): // 4xx
    case LLMServerException(): // 5xx
    case LLMNetworkException(): // connectivity
    case LLMUnknownException():
  }
}
```

## Tool / function calling

```dart
final res = await ai.chat(
  model: 'gpt-4o',
  messages: [LLMContent.user('Weather in Tokyo?')],
  tools: [
    LLMTool(
      name: 'get_weather',
      description: 'Get current weather',
      parameters: {
        'type': 'object',
        'properties': {'city': {'type': 'string'}},
        'required': ['city'],
      },
    ),
  ],
  toolChoice: LLMToolChoice.auto,
);

for (final call in res.toolCalls) {
  final result = await runTool(call.name, call.arguments);
  // Send the result back on the next turn:
  // LLMContent(role: LLMRole.user, parts: [
  //   LLMToolResultPart(toolCallId: call.id, content: result),
  // ])
}
```

## Structured output (JSON Schema)

```dart
final res = await ai.chat(
  model: 'gpt-4o',
  messages: [LLMContent.user('Extract name and age')],
  responseFormat: LLMResponseFormat.jsonSchema(
    schema: {
      'type': 'object',
      'properties': {
        'name': {'type': 'string'},
        'age': {'type': 'integer'},
      },
      'required': ['name', 'age'],
    },
  ),
);
```

## Streaming

Every provider implements true token-by-token SSE streaming:

```dart
await for (final text in ai.generateTextStream(model: '...', message: 'Hi')) {
  stdout.write(text);
}
```

For full control (reasoning deltas, tool calls, usage), use `chatStream()` /
`completionsStream()`:

```dart
await for (final chunk in ai.chatStream(
  model: '...',
  messages: [LLMContent.user('Hi')],
)) {
  stdout.write(chunk.delta);          // incremental text
  logThinking(chunk.reasoningDelta);  // incremental thinking (if any)
  if (chunk.isDone) {
    // The final chunk carries the complete parts, finish reason and usage.
    print(chunk.finishReason);
    print(chunk.usage);
  }
}
```

## Adding a New AI Provider

1. Create a class that inherits from `LLMAIBase`.
2. Implement `completions()`, `getModels()` and `validateKey()`.
3. Optionally override `completionsStream()` with the provider's SSE
   streaming (the shared helpers below already cover OpenAI-compatible
   APIs).

### Shared helpers for provider implementations

Two opt-in libraries keep provider packages free of copy-pasted plumbing
(they are not exported from `package:ai_box/ai_box.dart`):

- `package:ai_box/provider_http.dart` — `requestJson()` runs an HTTP call and
  normalizes failures into the sealed `LLMException` hierarchy
  (`LLMNetworkException` on connectivity errors, `LLMException.fromHttp` on
  non-2xx responses). `postSseData()` / `decodeSseJson()` do the same for
  SSE streaming endpoints.
- `package:ai_box/openai_compat.dart` — `buildOpenAiBody()` /
  `parseOpenAiResponse()` / `postOpenAiJson()` / `streamOpenAiCompletions()`
  implement the OpenAI-compatible Chat Completions wire format (multimodal
  content, tools, structured output, SSE streaming), shared by chatgpt_box,
  deepseek_box, grok_box, minimax_box and openrouter_box.
