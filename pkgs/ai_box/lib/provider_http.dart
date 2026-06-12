/// プロバイダー実装用の HTTP ヘルパー。
///
/// `import 'package:ai_box/provider_http.dart';` して使う。
/// アプリから直接使う想定ではなく、各プロバイダーパッケージ
/// （chatgpt_box / claude_box など）の内部実装向け。
library;

import 'dart:convert';

import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';
import 'package:http/http.dart' as http;

/// HTTP リクエストを実行し、JSON マップを取り出す。
///
/// 通信失敗は [LLMNetworkException]、非 2xx は [LLMException.fromHttp]、
/// JSON マップ以外のボディは [LLMUnknownException] に正規化する。
Future<Map<String, dynamic>> requestJson({
  required String provider,
  required Future<ResponseAcc> Function() send,
}) async {
  ResponseAcc response;
  try {
    response = await send();
  } catch (e) {
    throw LLMNetworkException(
      'Network request failed',
      provider: provider,
      raw: e,
    );
  }
  final statusCode = int.tryParse(response.statusCode) ?? 0;
  final body = response.body;
  final mapData = body is MapJsonResponseBody ? body.data : null;
  if (statusCode < 200 || statusCode >= 300) {
    throw LLMException.fromHttp(
      statusCode,
      provider: provider,
      body: mapData ?? body,
    );
  }
  if (mapData != null) return mapData;
  throw LLMUnknownException(
    'Unexpected response body from $provider',
    provider: provider,
    raw: body,
  );
}

/// JSON ボディを POST し、SSE（Server-Sent Events）の `data` ペイロードを
/// イベント単位で流す。
///
/// SSE の仕様に従い、複数行の `data:` は改行で連結し、空行でイベントを
/// 区切る。コメント行（`:` 始まり）や `event:` / `id:` などのフィールドは
/// 無視する（各プロバイダーの data JSON はイベント種別を自身に含むため）。
///
/// エラーは [requestJson] と同じ階層に正規化する:
/// 通信失敗・切断は [LLMNetworkException]、非 2xx は [LLMException.fromHttp]。
Stream<String> postSseData({
  required String url,
  required String provider,
  required Map<String, String> headers,
  required Map<String, dynamic> body,
  Map<String, String>? queryParameters,
}) async* {
  var uri = Uri.parse(url);
  if (queryParameters != null && queryParameters.isNotEmpty) {
    uri = uri.replace(
      queryParameters: {...uri.queryParameters, ...queryParameters},
    );
  }
  final request = http.Request('POST', uri)
    ..headers.addAll({
      'Content-Type': 'application/json',
      'Accept': 'text/event-stream',
      ...headers,
    })
    ..body = jsonEncode(body);

  final client = http.Client();
  try {
    http.StreamedResponse response;
    try {
      response = await client.send(request);
    } catch (e) {
      throw LLMNetworkException(
        'Network request failed',
        provider: provider,
        raw: e,
      );
    }
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw LLMException.fromHttp(
        response.statusCode,
        provider: provider,
        body: await _readErrorBody(response),
      );
    }
    final lines =
        response.stream.transform(utf8.decoder).transform(const LineSplitter());
    final dataBuffer = StringBuffer();
    var hasData = false;
    try {
      await for (final line in lines) {
        if (line.isEmpty) {
          // 空行 = イベントの区切り。
          if (hasData) {
            yield dataBuffer.toString();
            dataBuffer.clear();
            hasData = false;
          }
          continue;
        }
        if (line.startsWith(':')) continue; // コメント行。
        if (line.startsWith('data:')) {
          var value = line.substring(5);
          if (value.startsWith(' ')) value = value.substring(1);
          if (hasData) dataBuffer.write('\n');
          dataBuffer.write(value);
          hasData = true;
        }
      }
    } on LLMException {
      rethrow;
    } catch (e) {
      throw LLMNetworkException(
        'Connection lost during streaming',
        provider: provider,
        raw: e,
      );
    }
    if (hasData) yield dataBuffer.toString();
  } finally {
    client.close();
  }
}

/// SSE の `data` ペイロード列を JSON マップ列にデコードする。
///
/// `[DONE]`（OpenAI 互換 API の終端マーカー）・JSON でないもの・
/// マップでないものは読み飛ばす。
Stream<Map<String, dynamic>> decodeSseJson(Stream<String> data) async* {
  await for (final payload in data) {
    final trimmed = payload.trim();
    if (trimmed.isEmpty || trimmed == '[DONE]') continue;
    Object? decoded;
    try {
      decoded = jsonDecode(trimmed);
    } on FormatException {
      continue;
    }
    if (decoded is Map<String, dynamic>) yield decoded;
  }
}

Future<Object?> _readErrorBody(http.StreamedResponse response) async {
  String text;
  try {
    text = await response.stream.bytesToString();
  } on Exception {
    return null;
  }
  try {
    return jsonDecode(text);
  } on FormatException {
    return text;
  }
}
