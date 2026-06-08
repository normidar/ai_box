import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';
import 'package:openrouter_box/src/models/openrouter_key_info.dart';
import 'package:openrouter_box/src/models/openrouter_model.dart';

/// OpenRouter REST API（`https://openrouter.ai/api/v1`）への薄いアクセスレイヤ。
class OpenRouterCore {
  const OpenRouterCore._();

  /// API のベース URL。
  static const baseUrl = 'https://openrouter.ai/api/v1';

  static const _provider = 'openrouter';

  /// 利用可能なモデル一覧を取得する。
  ///
  /// このエンドポイントは認証不要だが、[apiKey] を渡すとアカウントに応じた
  /// 結果を取得できる。
  static Future<List<OpenRouterModel>> listModels({String? apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: '$baseUrl/models',
        headers: getHeaders(apiKey: apiKey),
      ),
    );
    final data = _ensureOk(response.statusCode, response.body);
    final list = (data['data'] as List?) ?? const [];
    return [
      for (final e in list)
        if (e is Map<String, dynamic>) OpenRouterModel.fromJson(e),
    ];
  }

  /// API キーの情報（利用額・上限など）を取得する。
  ///
  /// 認証が必要なため、キーの有効性確認にも使える。
  static Future<OpenRouterKeyInfo> getKeyInfo({required String apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: '$baseUrl/key',
        headers: getHeaders(apiKey: apiKey),
      ),
    );
    final data = _ensureOk(response.statusCode, response.body);
    return OpenRouterKeyInfo.fromJson(data);
  }

  /// 共通のリクエストヘッダを生成する。
  ///
  /// [referer] / [title] は OpenRouter のランキング用ヘッダ
  /// （`HTTP-Referer` / `X-Title`、任意）。
  static RestHeaders getHeaders({
    String? apiKey,
    String? referer,
    String? title,
  }) {
    return RestHeaders({
      if (apiKey != null) 'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
      if (referer != null) 'HTTP-Referer': referer,
      if (title != null) 'X-Title': title,
    });
  }

  /// 2xx を確認しつつ JSON マップを取り出す。失敗時は [LLMException]。
  static Map<String, dynamic> _ensureOk(String statusCodeStr, Object? body) {
    final statusCode = int.tryParse(statusCodeStr) ?? 0;
    final mapData = body is MapJsonResponseBody ? body.data : null;
    if (statusCode < 200 || statusCode >= 300) {
      throw LLMException.fromHttp(
        statusCode,
        provider: _provider,
        body: mapData ?? body,
      );
    }
    if (mapData != null) return mapData;
    throw LLMUnknownException(
      'Unexpected response body from $_provider',
      provider: _provider,
      raw: body,
    );
  }
}
