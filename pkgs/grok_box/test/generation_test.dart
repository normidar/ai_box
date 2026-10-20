import 'dart:convert';
import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:grok_box/grok_box.dart';
import 'package:test/test.dart';

/// 画像生成（Grok の generateImage）の検証。
void main() {
  late HttpServer server;
  late List<(String, Map<String, dynamic>)> requests;

  setUp(() async {
    requests = [];
    server = (await HttpServer.bind(InternetAddress.loopbackIPv4, 0))
      ..listen((request) async {
        final body = jsonDecode(await utf8.decoder.bind(request).join())
            as Map<String, dynamic>;
        requests.add((request.uri.path, body));
        request.response
          ..headers.contentType = ContentType.json
          ..write(
            jsonEncode({
              'data': [
                {
                  'b64_json': base64Encode([9]),
                  'revised_prompt': 'a cat',
                },
              ],
            }),
          );
        await request.response.close();
      });
  });
  tearDown(() => server.close(force: true));

  test('asks for base64 and sends aspect_ratio instead of size', () async {
    final res = await Grok(
      apiKey: 'xai-test',
      baseUrl: 'http://127.0.0.1:${server.port}/v1',
    ).generateImage(
      const ImageGenerationRequest(
        model: 'grok-imagine-image',
        prompt: 'cat',
        size: '1024x1024',
        aspectRatio: '1:1',
      ),
    );
    expect(requests.single.$1, '/v1/images/generations');
    expect(requests.single.$2, {
      'model': 'grok-imagine-image',
      'prompt': 'cat',
      'aspect_ratio': '1:1',
      'response_format': 'b64_json',
    });
    expect(res.images.single.mimeType, 'image/jpeg');
    expect(res.revisedPrompt, 'a cat');
  });
}
