import 'package:ai_box/provider_http.dart';
import 'package:api_http/api_http.dart';
import 'package:grok_box/grok_box.dart';

class GrokCore {
  static const _baseUrl = 'https://api.x.ai/v1';
  static const _provider = 'grok';

  static Future<ChatCompletionResponse> chatCompletion({
    required String apiKey,
    required ChatCompletionRequest request,
  }) async {
    final data = await requestJson(
      provider: _provider,
      send: () => Api.post(
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
    final data = await requestJson(
      provider: _provider,
      send: () => Api.get(
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
    final data = await requestJson(
      provider: _provider,
      send: () => Api.get(
        requestAcc: GetRequestAcc(
          url: '$_baseUrl/models/$modelId',
          headers: _getHeaders(apiKey: apiKey),
        ),
      ),
    );
    return Model.fromJson(data);
  }

  static Future<ModelList> listModels({required String apiKey}) async {
    final data = await requestJson(
      provider: _provider,
      send: () => Api.get(
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
}
