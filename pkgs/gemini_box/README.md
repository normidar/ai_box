# gemini_box

[![GitHub](https://img.shields.io/github/license/normidar/ai_box.svg)](https://github.com/normidar/ai_box/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/gemini_box.svg)](https://pub.dev/packages/gemini_box)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/ai_box.svg)](https://github.com/normidar/ai_box/stargazers)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

A Google Gemini provider based on [ai_box](https://github.com/normidar/ai_box).

## Usage

```dart
import 'package:ai_box/ai_box.dart';
import 'package:gemini_box/gemini_box.dart';

Future<void> main() async {
  final ai = Gemini(apiKey: 'YOUR_API_KEY');

  // One-shot text generation.
  final answer = await ai.generateText(
    model: 'gemini-3.5-flash',
    message: 'Say hello in one short sentence.',
  );
  print(answer);

  // Multi-turn chat.
  final res = await ai.chat(
    model: 'gemini-3.5-flash',
    messages: [
      LLMContent.system('You are concise.'),
      LLMContent.user('What is the capital of Japan?'),
    ],
    maxTokens: 32,
  );
  print(res.text);
  print(res.usage); // token usage
}
```

## Streaming

True SSE streaming — text arrives incrementally and the final chunk carries
the finish reason and token usage:

```dart
await for (final text in ai.generateTextStream(
  model: 'gemini-3.5-flash',
  message: 'Write a haiku about Dart.',
)) {
  stdout.write(text);
}
```

## Working with images

Pass images as `LLMContentPart`s on any message — `ai_box` converts them to
Gemini `inlineData` / `fileData` automatically:

```dart
final res = await ai.chat(
  model: 'gemini-3.5-flash',
  messages: [
    LLMContent.user('Please describe this image.', attachments: [
      LLMImagePart.bytes(jpegBytes, mimeType: 'image/jpeg'),
    ]),
  ],
);
print(res.text);
```

## Low-level typed API

For full control over the request body, use `generateContent` with the typed
request/response classes:

```dart
final response = await ai.generateContent(
  model: 'gemini-3.5-flash',
  requestBody: RequestBody(
    contents: [
      Content(parts: [Part(text: 'Hello, Gemini!')]),
    ],
    generationConfig: GenerationConfig(
      temperature: 0.7,
      maxOutputTokens: 1000,
    ),
  ),
);
print(response.candidates?.first.content?.parts?.first);
```

## Files API

Upload and manage files via `ai.files` (the Gemini Files API):

```dart
final file = await ai.files.uploadFile(file: File('path/to/image.jpg'));
final files = await ai.files.getFiles();
```

## Models and key validation

```dart
final models = await ai.getModels(); // live model list from the API
final ok = await ai.validateKey();
```

Pass any model ID the API serves (see `getModels()`), e.g.
`gemini-3.5-flash` or other current Gemini 3.x models.

Multimodal input (images, files), tool calling, structured output and the
sealed `LLMException` error hierarchy are all provided by
[ai_box](https://pub.dev/packages/ai_box) — see its README for details.
