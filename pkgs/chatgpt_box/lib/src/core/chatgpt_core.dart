import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';

class ChatGptCore {
  static const provider = 'openai';

  static RestHeaders getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }

  /// HTTP リクエストを実行し、JSON マップを取り出す。
  ///
  /// 通信失敗は [LLMNetworkException]、非 2xx は [LLMException.fromHttp] に
  /// 正規化する。
  static Future<Map<String, dynamic>> requestJson(
    Future<ResponseAcc> Function() send,
  ) async {
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
}
