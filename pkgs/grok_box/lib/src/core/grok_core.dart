import 'package:api_http/api_http.dart';
import 'package:grok_box/grok_box.dart';

class GrokCore {
  static Future<ChatCompletionResponse> chatCompletion({
    required String apiKey,
    required ChatCompletionRequest request,
  }) async {
    final response = await Api.post(
      requestAcc: PostRequestAcc(
        url: 'https://api.x.ai/v1/chat/completions',
        headers: _getHeaders(apiKey: apiKey),
        body: JsonRequestBody(request.toJson()),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return ChatCompletionResponse.fromJson(data);
      case _:
        throw Exception('Failed to chat completion: ${response.body}');
    }
  }

  static Future<ApiKeyInfo> getApiKeyInfo({required String apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.x.ai/v1/api-key',
        headers: _getHeaders(apiKey: apiKey),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return ApiKeyInfo.fromJson(data);
      case _:
        throw Exception('Failed to get api key info: ${response.body}');
    }
  }

  static Future<Model> getModel({
    required String apiKey,
    required String modelId,
  }) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.x.ai/v1/models/$modelId',
        headers: _getHeaders(apiKey: apiKey),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return Model.fromJson(data);
      case _:
        throw Exception('Failed to get model: ${response.body}');
    }
  }

  static Future<ModelList> listModels({required String apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.x.ai/v1/models',
        headers: _getHeaders(apiKey: apiKey),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return ModelList.fromJson(data);
      case _:
        throw Exception('Failed to list models: ${response.body}');
    }
  }

  static RestHeaders _getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }
}
