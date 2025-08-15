import 'dart:io';

import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';
import 'package:mime/mime.dart';

class GeminiFilesCore {
  static Future<List<GeminiFile>> getFiles({
    required String apiKey,
  }) async {
    final requestAcc = ac.GetRequestAcc(
      url: 'https://generativelanguage.googleapis.com/v1beta/files',
      queryParameters: {
        'key': apiKey,
      },
    );

    final response = await ac.Api.get(requestAcc: requestAcc);
    final body = response.body;
    switch (body) {
      case ac.MapJsonResponseBody():
        return (body.data['files'] as List)
            .cast<Map<String, dynamic>>()
            .map(GeminiFile.fromJson)
            .toList();
      default:
        throw Exception('Invalid response body: $body');
    }
  }

  /// 初期のアップロードURLを取得するためのリクエスト
  /// Ref: https://ai.google.dev/api/files
  static Future<String> getUploadUrl({
    required String apiKey,
    required String displayName,
    required String mimeType,
    required int contentLength,
  }) async {
    // ヘッダーを作成
    final customHeaders = <String, String>{
      'X-Goog-Upload-Protocol': 'resumable',
      'X-Goog-Upload-Command': 'start',
      'X-Goog-Upload-Header-Content-Length': contentLength.toString(),
      'X-Goog-Upload-Header-Content-Type': mimeType,
    };

    final requestAcc = ac.PostRequestAcc(
      url: 'https://generativelanguage.googleapis.com/upload/v1beta/files',
      headers: ac.RestHeaders(customHeaders),
      queryParameters: {
        'key': apiKey,
      },
      body: ac.JsonRequestBody(
        {
          'file': {
            'display_name': displayName,
          },
        },
      ),
    );

    final response = await ac.Api.post(requestAcc: requestAcc);

    final headers = response.headers.toJson();

    return headers['x-goog-upload-url']!;
  }

  static Future<GeminiFile> uploadFile({
    required String apiKey,
    required File file,
  }) async {
    final mimeType = lookupMimeType(file.path);
    final contentLength = file.lengthSync();
    final displayName = file.path.split('/').last;
    final uploadUrl = await getUploadUrl(
      apiKey: apiKey,
      displayName: displayName,
      mimeType: mimeType!,
      contentLength: contentLength,
    );

    final fileDataPart = await uploadFileCore(
      uploadUrl: uploadUrl,
      file: file,
      contentLength: contentLength,
    );

    return fileDataPart;
  }

  static Future<GeminiFile> uploadFileCore({
    required String uploadUrl,
    required File file,
    required int contentLength,
  }) async {
    final requestAcc = ac.PostRequestAcc(
      url: uploadUrl,
      headers: ac.RestHeaders({
        'Content-Length': contentLength.toString(),
        'X-Goog-Upload-Offset': '0',
        'X-Goog-Upload-Command': 'upload, finalize',
      }),
      body: ac.BinaryRequestBody.fromFile(file),
    );

    final response = await ac.Api.post(requestAcc: requestAcc);
    final body = response.body;
    switch (body) {
      case ac.MapJsonResponseBody():
        return GeminiFile.fromJson(body.data['file'] as Map<String, dynamic>);
      default:
        throw Exception('Invalid response body: $body');
    }
  }
}
