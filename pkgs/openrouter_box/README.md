# openrouter_box

An [OpenRouter](https://openrouter.ai) AI provider based on [ai_box](https://github.com/normidar/ai_box).

OpenRouter exposes a single OpenAI-compatible endpoint that routes to many
underlying models (OpenAI, Anthropic, Google, Meta, and more). Specify a model
with the `provider/model` form, e.g. `openai/gpt-4o-mini`.

## Usage

```dart
import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/openrouter_box.dart';

Future<void> main() async {
  final ai = OpenRouter(apiKey: 'sk-or-...');

  // One-shot text generation.
  final answer = await ai.generateText(
    model: 'openai/gpt-4o-mini',
    message: 'Say hello in one short sentence.',
  );
  print(answer);

  // Multi-turn chat.
  final res = await ai.chat(
    model: 'openai/gpt-4o-mini',
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

### Optional ranking headers

Pass `referer` / `title` to send OpenRouter's optional `HTTP-Referer` /
`X-Title` ranking headers:

```dart
final ai = OpenRouter(
  apiKey: 'sk-or-...',
  referer: 'https://your-app.example',
  title: 'Your App',
);
```

### Models and key info

```dart
// Rich model metadata (pricing, modalities, context length, ...).
final models = await ai.listOpenRouterModels();
final free = models.where((m) => m.isFree).map((m) => m.id).toList();

// Common ai_box model list.
final aiModels = await ai.getModels();

// API key balance / limits.
final info = await ai.getKeyInfo();
print('usage: \$${info.usage} / limit: \$${info.limit}');

// Validate the key.
final ok = await ai.validateKey();
```
