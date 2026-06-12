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

- `chat()`: Chat functionality
- `getModelIds()`: Get a list of available model IDs
- `validateKey()`: Validate the API key

### Provided Utility Methods

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

```dart
await for (final text in ai.generateTextStream(model: '...', message: 'Hi')) {
  stdout.write(text);
}
```

> Note: the base `completionsStream()` currently emits the full response as a
> single chunk (a non-incremental fallback). Providers can override it with
> true token-by-token SSE streaming.

## Common Tests

By using the `runLLMAIBaseCommonTests()` function, you can ensure that all `LLMAIBase` implementation classes are tested to the same standard.

### Usage Example

```dart
import 'package:test/test.dart';
import 'package:your_ai_package/your_ai_package.dart';

// Import the test utilities from ai_box
import '../ai_box/test/test_utils.dart';

void main() {
  // Run the common tests
  runLLMAIBaseCommonTests(
    createInstance: () => YourAIClass(apiKey: 'your-api-key'),
    instanceName: 'YourAI',
    testModel: 'your-model-name',
    skipApiTests: false, // Set to false to perform actual API calls
  );

  // Add any additional specific tests here
  group('YourAI Specific Tests', () {
    // ...
  });
}
```

### Parameters

- `createInstance`: A function that creates an instance of the LLMAIBase to be tested.
- `instanceName`: The name of the class being tested (for display purposes in tests).
- `testModel`: The name of the model to be used for testing.
- `skipApiTests`: Whether to skip tests that involve API calls (default: false).

### Test Contents

The common tests include the following:

#### Basic Tests

- The instance is created correctly.
- The API key is set.

#### API Functionality Tests (if skipApiTests=false)

- The API key can be validated.
- Available model IDs can be retrieved.
- The chat functionality works.
- The chat functionality with strings works.
- The text generation functionality works.
- The `maxTokens` parameter is applied.

#### Class Tests

- `LLMContent` is created correctly.
- The values of `LLMRole` are correct.

#### Error Handling Tests

- An error occurs with an empty message list.
- An error occurs with an invalid model name.

## Adding a New AI Provider

1. Create a class that inherits from `LLMAIBase`.
2. Implement the required methods.
3. Import `../ai_box/test/test_utils.dart` in the test file.
4. Call `runLLMAIBaseCommonTests()`.
5. Add specific tests as needed.

This ensures that all AI providers maintain consistent quality.

### Shared helpers for provider implementations

Two opt-in libraries keep provider packages free of copy-pasted plumbing
(they are not exported from `package:ai_box/ai_box.dart`):

- `package:ai_box/provider_http.dart` — `requestJson()` runs an HTTP call and
  normalizes failures into the sealed `LLMException` hierarchy
  (`LLMNetworkException` on connectivity errors, `LLMException.fromHttp` on
  non-2xx responses).
- `package:ai_box/openai_compat.dart` — `buildOpenAiBody()` /
  `parseOpenAiResponse()` / `postOpenAiJson()` implement the OpenAI-compatible
  Chat Completions wire format (multimodal content, tools, structured output),
  shared by chatgpt_box, deepseek_box, grok_box, minimax_box and
  openrouter_box.

### Notes

- The test utilities are located in the `test` folder and are not included in the main `lib` folder.
- This prevents the `test` package dependency from being included in the production code.
