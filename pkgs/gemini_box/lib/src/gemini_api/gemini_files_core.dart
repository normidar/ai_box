import 'dart:io';

import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';
import 'package:mime/mime.dart';

class GeminiFilesCore {
  static const _provider = 'gemini';

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
        // ファイルが 1 件もないとき、API は `files` キーなしの
        // `{}` を返す。
        final files = body.data['files'];
        if (files == null) return const [];
        if (files is! List) {
          throw LLMUnknownException(
            'Unexpected `files` field in response: $files',
            provider: _provider,
            raw: body.data,
          );
        }
        return files
            .cast<Map<String, dynamic>>()
            .map(GeminiFile.fromJson)
            .toList();
      default:
        throw LLMUnknownException(
          'Invalid response body: $body',
          provider: _provider,
          raw: body,
        );
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

    final uploadUrl = headers['x-goog-upload-url'];
    if (uploadUrl == null) {
      throw LLMUnknownException(
        'Upload-start response did not include the x-goog-upload-url header',
        provider: _provider,
        raw: headers,
      );
    }
    return uploadUrl;
  }

  static Future<GeminiFile> uploadFile({
    required String apiKey,
    required File file,
  }) async {
    final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';
    final contentLength = file.lengthSync();
    final displayName = file.path.split('/').last;
    final uploadUrl = await getUploadUrl(
      apiKey: apiKey,
      displayName: displayName,
      mimeType: mimeType,
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
        final fileJson = body.data['file'];
        if (fileJson is! Map<String, dynamic>) {
          throw LLMUnknownException(
            'Upload response did not include a `file` object',
            provider: _provider,
            raw: body.data,
          );
        }
        return GeminiFile.fromJson(fileJson);
      default:
        throw LLMUnknownException(
          'Invalid response body: $body',
          provider: _provider,
          raw: body,
        );
    }
  }
}
