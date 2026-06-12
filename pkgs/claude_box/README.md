# claude_box

[![GitHub](https://img.shields.io/github/license/normidar/ai_box.svg)](https://github.com/normidar/ai_box/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/claude_box.svg)](https://pub.dev/packages/claude_box)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/ai_box.svg)](https://github.com/normidar/ai_box/stargazers)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

An Anthropic (Claude) provider based on [ai_box](https://github.com/normidar/ai_box).

## Usage

```dart
import 'package:ai_box/ai_box.dart';
import 'package:claude_box/claude_box.dart';

Future<void> main() async {
  final ai = Claude(apiKey: 'sk-ant-...');

  // One-shot text generation.
  final answer = await ai.generateText(
    model: 'claude-sonnet-4-6',
    message: 'Say hello in one short sentence.',
  );
  print(answer);

  // Multi-turn chat.
  final res = await ai.chat(
    model: 'claude-sonnet-4-6',
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
  model: 'claude-sonnet-4-6',
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

Multimodal input (images, files), tool calling, structured output and the
sealed `LLMException` error hierarchy are all provided by
[ai_box](https://pub.dev/packages/ai_box) — see its README for details.
