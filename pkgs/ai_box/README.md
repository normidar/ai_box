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

## Common Tests

By using the `runLLMAIBaseCommonTests()` function, you can ensure that all `LLMAIBase` implementation classes are tested to the same standard.

### Usage Example

```dart
import 'package:test/test.dart';
import 'package:your_ai_package/your_ai_package.dart';

// Import the test utilities from box_ai_base
import '../box_ai_base/test/test_utils.dart';

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
3. Import `../box_ai_base/test/test_utils.dart` in the test file.
4. Call `runLLMAIBaseCommonTests()`.
5. Add specific tests as needed.

This ensures that all AI providers maintain consistent quality.

### Notes

- The test utilities are located in the `test` folder and are not included in the main `lib` folder.
- This prevents the `test` package dependency from being included in the production code.
