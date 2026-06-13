# chatgpt_box

[![GitHub](https://img.shields.io/github/license/normidar/ai_box.svg)](https://github.com/normidar/ai_box/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/chatgpt_box.svg)](https://pub.dev/packages/chatgpt_box)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/ai_box.svg)](https://github.com/normidar/ai_box/stargazers)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

An OpenAI (ChatGPT) provider based on [ai_box](https://github.com/normidar/ai_box).

## Usage

```dart
import 'package:ai_box/ai_box.dart';
import 'package:chatgpt_box/chatgpt_box.dart';

Future<void> main() async {
  final ai = ChatGPT(apiKey: 'sk-...');

  // One-shot text generation.
  final answer = await ai.generateText(
    model: 'gpt-5.4-mini',
    message: 'Say hello in one short sentence.',
  );
  print(answer);

  // Multi-turn chat.
  final res = await ai.chat(
    model: 'gpt-5.4-mini',
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
  model: 'gpt-5.4-mini',
  message: 'Write a haiku about Dart.',
)) {
  stdout.write(text);
}
```

## Models and key validation

```dart
final models = await ai.getModels();
final ok = await ai.validateKey();
```

Multimodal input (images, audio, files), tool calling, structured output
(JSON Schema) and the sealed `LLMException` error hierarchy are all provided
by [ai_box](https://pub.dev/packages/ai_box) — see its README for details.
