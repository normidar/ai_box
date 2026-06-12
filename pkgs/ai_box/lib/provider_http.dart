/// プロバイダー実装用の HTTP ヘルパー。
///
/// `import 'package:ai_box/provider_http.dart';` して使う。
/// アプリから直接使う想定ではなく、各プロバイダーパッケージ
/// （chatgpt_box / claude_box など）の内部実装向け。
library;

import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';

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
