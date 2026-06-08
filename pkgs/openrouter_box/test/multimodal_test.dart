import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/src/openai_compat.dart';
import 'package:test/test.dart';

/// `buildOpenAiBody` がマルチモーダル入力（画像・音声・ファイル）を
/// OpenAI 互換のリクエストへ正しく変換するかを検証する。
///
/// これらは OpenRouter のマルチモーダル対応モデルへ送られる実際のペイロード形状。
void main() {
  final bytes = Uint8List.fromList(utf8.encode('hello-bytes'));
  final b64 = base64Encode(bytes);

  List<dynamic> contentOf(LLMContent message) {
    final body = buildOpenAiBody(
      LLMCompletionRequest(model: 'test/model', messages: [message]),
      maxTokensKey: 'max_tokens',
    );
    final messages = body['messages'] as List;
    return (messages.single as Map<String, dynamic>)['content'] as List;
  }

  group('image input', () {
    test('bytes -> image_url with data URI', () {
      final content = contentOf(
        LLMContent.user(
          'describe',
          attachments: [LLMImagePart.bytes(bytes)],
        ),
      );
      expect(content[0], {'type': 'text', 'text': 'describe'});
      final img = content[1] as Map<String, dynamic>;
      expect(img['type'], 'image_url');
      expect(
        (img['image_url'] as Map)['url'],
        'data:image/png;base64,$b64',
      );
    });

    test('url -> image_url with the raw url', () {
      final content = contentOf(
        LLMContent.user(
          'what is this',
          attachments: [LLMImagePart.url('https://example.com/a.jpg')],
        ),
      );
      final img = content[1] as Map<String, dynamic>;
      expect((img['image_url'] as Map)['url'], 'https://example.com/a.jpg');
    });
  });

  group('audio input', () {
    test('wav bytes -> input_audio with base64 + format', () {
      final content = contentOf(
        LLMContent.user(
          'transcribe',
          attachments: [LLMAudioPart.bytes(bytes, mimeType: 'audio/wav')],
        ),
      );
      final audio = content[1] as Map<String, dynamic>;
      expect(audio['type'], 'input_audio');
      final inner = audio['input_audio'] as Map<String, dynamic>;
      expect(inner['data'], b64);
      expect(inner['format'], 'wav');
    });

    test('mp3 mime is normalized to format "mp3"', () {
      final content = contentOf(
        LLMContent.user(
          'listen',
          attachments: [LLMAudioPart.bytes(bytes, mimeType: 'audio/mpeg')],
        ),
      );
      final inner =
          (content[1] as Map<String, dynamic>)['input_audio']
              as Map<String, dynamic>;
      expect(inner['format'], 'mp3');
    });
  });

  group('file input', () {
    test('pdf bytes -> file with filename + file_data data URI', () {
      final content = contentOf(
        LLMContent.user(
          'summarize',
          attachments: [
            LLMFilePart.bytes(
              bytes,
              mimeType: 'application/pdf',
              filename: 'doc.pdf',
            ),
          ],
        ),
      );
      final file = content[1] as Map<String, dynamic>;
      expect(file['type'], 'file');
      final inner = file['file'] as Map<String, dynamic>;
      expect(inner['filename'], 'doc.pdf');
      expect(inner['file_data'], 'data:application/pdf;base64,$b64');
    });
  });

  group('mixed multimodal message', () {
    test('text + image + audio + file are all encoded in order', () {
      final content = contentOf(
        LLMContent.user(
          'analyze all of these',
          attachments: [
            LLMImagePart.bytes(bytes),
            LLMAudioPart.bytes(bytes, mimeType: 'audio/wav'),
            LLMFilePart.bytes(
              bytes,
              mimeType: 'application/pdf',
              filename: 'd.pdf',
            ),
          ],
        ),
      );
      expect(content.length, 4);
      expect((content[0] as Map)['type'], 'text');
      expect((content[1] as Map)['type'], 'image_url');
      expect((content[2] as Map)['type'], 'input_audio');
      expect((content[3] as Map)['type'], 'file');
    });
  });
}
