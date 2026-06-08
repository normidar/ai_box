import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_box/ai_box.dart';
import 'package:openrouter_box/src/openai_compat.dart';
import 'package:test/test.dart';

/// マルチモーダルの入出力を検証する。
///
/// - 入力: `buildOpenAiBody` が画像・音声・ファイルを OpenAI 互換リクエストへ
///   正しく変換するか（OpenRouter へ送る実際のペイロード形状）。
/// - 出力: `parseOpenAiResponse` が OpenRouter の生成画像（`message.images`）と
///   音声（`message.audio`）をパーツへ復元できるか。
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

  group('image output parsing', () {
    test('message.images (OpenRouter) -> LLMImagePart with bytes', () {
      final imgBytes = Uint8List.fromList([1, 2, 3, 4]);
      final dataUri = 'data:image/png;base64,${base64Encode(imgBytes)}';
      final res = parseOpenAiResponse({
        'choices': [
          {
            'message': {
              'role': 'assistant',
              'content': 'Here is your image:',
              'images': [
                {
                  'type': 'image_url',
                  'image_url': {'url': dataUri},
                },
              ],
            },
            'finish_reason': 'stop',
          },
        ],
        'usage': {'prompt_tokens': 5, 'completion_tokens': 1290},
      });

      expect(res.text, 'Here is your image:');
      expect(res.content.hasImages, isTrue);
      final img = res.content.images.single;
      expect(img.hasBytes, isTrue);
      expect(img.mimeType, 'image/png');
      expect(img.bytes, imgBytes);
      expect(res.usage.outputTokens, 1290);
    });

    test('image in content array is also captured', () {
      final dataUri =
          'data:image/png;base64,${base64Encode(
            Uint8List.fromList([9, 9]),
          )}';
      final res = parseOpenAiResponse({
        'choices': [
          {
            'message': {
              'role': 'assistant',
              'content': [
                {'type': 'text', 'text': 'see:'},
                {
                  'type': 'image_url',
                  'image_url': {'url': dataUri},
                },
              ],
            },
            'finish_reason': 'stop',
          },
        ],
      });
      expect(res.text, 'see:');
      expect(res.content.images.single.bytes, [9, 9]);
    });
  });

  group('audio output parsing', () {
    test('message.audio -> LLMAudioPart with base64 + transcript', () {
      final audioBytes = Uint8List.fromList([5, 6, 7, 8]);
      final res = parseOpenAiResponse({
        'choices': [
          {
            'message': {
              'role': 'assistant',
              'content': '',
              'audio': {
                'data': base64Encode(audioBytes),
                'transcript': 'hello world',
              },
            },
            'finish_reason': 'stop',
          },
        ],
      });
      expect(res.content.hasAudio, isTrue);
      final audio = res.content.audioList.single;
      expect(audio.base64Data, base64Encode(audioBytes));
      expect(audio.transcript, 'hello world');
    });
  });
}
