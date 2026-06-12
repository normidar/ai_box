import 'package:ai_box/ai_box.dart';
import 'package:api_http/api_http.dart';
import 'package:grok_box/grok_box.dart';

class GrokCore {
  static const _baseUrl = 'https://api.x.ai/v1';
  static const _provider = 'grok';

  static Future<ChatCompletionResponse> chatCompletion({
    required String apiKey,
    required ChatCompletionRequest request,
  }) async {
    final data = await _requestJson(
      () => Api.post(
        requestAcc: PostRequestAcc(
          url: '$_baseUrl/chat/completions',
          headers: _getHeaders(apiKey: apiKey),
          body: JsonRequestBody(request.toJson()),
        ),
      ),
    );
    return ChatCompletionResponse.fromJson(data);
  }

  static Future<ApiKeyInfo> getApiKeyInfo({required String apiKey}) async {
    final data = await _requestJson(
      () => Api.get(
        requestAcc: GetRequestAcc(
          url: '$_baseUrl/api-key',
          headers: _getHeaders(apiKey: apiKey),
        ),
      ),
    );
    return ApiKeyInfo.fromJson(data);
  }

  static Future<Model> getModel({
    required String apiKey,
    required String modelId,
  }) async {
    final data = await _requestJson(
      () => Api.get(
        requestAcc: GetRequestAcc(
          url: '$_baseUrl/models/$modelId',
          headers: _getHeaders(apiKey: apiKey),
        ),
      ),
    );
    return Model.fromJson(data);
  }

  static Future<ModelList> listModels({required String apiKey}) async {
    final data = await _requestJson(
      () => Api.get(
        requestAcc: GetRequestAcc(
          url: '$_baseUrl/models',
          headers: _getHeaders(apiKey: apiKey),
        ),
      ),
    );
    return ModelList.fromJson(data);
  }

  static RestHeaders _getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }

  /// HTTP リクエストを実行し、JSON マップを取り出す。
  ///
  /// 通信失敗は [LLMNetworkException]、非 2xx は [LLMException.fromHttp] に
  /// 正規化する。
  static Future<Map<String, dynamic>> _requestJson(
    Future<ResponseAcc> Function() send,
  ) async {
    ResponseAcc response;
    try {
      response = await send();
    } catch (e) {
      throw LLMNetworkException(
        'Network request failed',
        provider: _provider,
        raw: e,
      );
    }
    final statusCode = int.tryParse(response.statusCode) ?? 0;
    final body = response.body;
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
