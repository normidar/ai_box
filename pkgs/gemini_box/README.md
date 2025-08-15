# Gemini Box

## Overview

Gemini Box is a wrapper library for easily using the Gemini API, Google Cloud Platform (GCP)'s Generative AI API, in Dart. This package is used within the Coin Galaxy project and enables efficient communication with Gemini AI models.

## Features

- Support for the latest Gemini AI models (Gemini 1.0, 1.5, 2.0, 2.5, etc.)
- Text generation, image understanding, embedding generation, and other capabilities
- File upload and file management support
- Compatible with various Gemini model versions
- Flexible request configuration options

## Usage

```dart
import 'package:gemini_box/gemini_box.dart';

void main() async {
  // Initialize Gemini instance with API key
  final gemini = Gemini(apiKey: 'YOUR_API_KEY');

  // Create request
  final requestBody = RequestBody(
    contents: [
      Content(
        parts: [
          Part(text: 'Hello, Gemini!'),
        ],
      ),
    ],
    generationConfig: GenerationConfig(
      temperature: 0.7,
      maxOutputTokens: 1000,
    ),
  );

  // Generate content
  final response = await gemini.generateContent(
    model: GeminiVersions.gemini15Pro.version,
    requestBody: requestBody,
  );

  // Handle response
  print(response.candidates?.first.content?.parts?.first);
}
```

## Working with Images

```dart
import 'dart:convert';
import 'dart:io';
import 'package:gemini_box/gemini_box.dart';

void main() async {
  // Load image file
  final imageFile = File('path/to/image.jpg');
  final imageBytes = await imageFile.readAsBytes();
  final base64Image = base64Encode(imageBytes);

  // Initialize Gemini instance
  final gemini = Gemini(apiKey: 'YOUR_API_KEY');

  // Generate content with inline image
  final response = await gemini.generateContent(
    model: GeminiVersions.gemini20FlashLite.version,
    requestBody: RequestBody(
      contents: [
        Content(
          parts: [
            Part(inlineData: Blob(
              mimeType: 'image/jpeg',
              data: base64Image,
            )),
            Part(text: 'Please describe this image.'),
          ],
        ),
      ],
    ),
  );

  // Display result
  print(response.candidates?.first.content?.parts?.first);
}
```

## Supported Models

This library supports numerous Gemini model versions, including:

- Gemini 1.0 Pro Vision
- Gemini 1.5 Pro
- Gemini 1.5 Flash
- Gemini 2.0 Flash
- Gemini 2.5 Flash Preview
- And many others

## Installation

Add the dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  gemini_box: ^1.0.0
```

Then install the package:

```bash
dart pub get
```

## License

This project is provided under the MIT License.
