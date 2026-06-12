# deepseek_box

[![GitHub](https://img.shields.io/github/license/normidar/ai_box.svg)](https://github.com/normidar/ai_box/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/deepseek_box.svg)](https://pub.dev/packages/deepseek_box)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/ai_box.svg)](https://github.com/normidar/ai_box/stargazers)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

A DeepSeek AI provider based on [ai_box](https://github.com/normidar/ai_box).

## Usage

```dart
import 'package:ai_box/ai_box.dart';
import 'package:deepseek_box/deepseek_box.dart';

Future<void> main() async {
  final ai = DeepSeek(apiKey: 'sk-...');

  // One-shot text generation.
  final answer = await ai.generateText(
    model: 'deepseek-chat',
    message: 'Say hello in one short sentence.',
  );
  print(answer);

  // Multi-turn chat.
  final res = await ai.chat(
    model: 'deepseek-chat',
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

## Reasoning model

With `deepseek-reasoner`, the model's chain of thought is exposed through
the common ai_box reasoning API:

```dart
final res = await ai.chat(
  model: 'deepseek-reasoner',
  messages: [LLMContent.user('What is 17 * 24?')],
);
print(res.content.reasoning); // thinking
print(res.text); // final answer
```

## Streaming

True SSE streaming — text arrives incrementally and the final chunk carries
the finish reason and token usage:

```dart
await for (final text in ai.generateTextStream(
  model: 'deepseek-chat',
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

Tool calling, structured output and the sealed `LLMException` error
hierarchy are all provided by [ai_box](https://pub.dev/packages/ai_box) —
see its README for details.
