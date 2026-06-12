import 'package:ai_box/provider_http.dart' as provider_http;
import 'package:api_http/api_http.dart';

class ChatGptCore {
  static const provider = 'openai';

  static RestHeaders getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }

  /// HTTP リクエストを実行し、JSON マップを取り出す
  /// （[provider_http.requestJson] への委譲）。
  static Future<Map<String, dynamic>> requestJson(
    Future<ResponseAcc> Function() send,
  ) => provider_http.requestJson(provider: provider, send: send);
}
