import 'package:api_http/api_http.dart';
import 'package:deepseek_box/deepseek_box.dart';

class DeepSeekCore {
  static const _baseUrl = 'https://api.deepseek.com';

  static Future<ChatCompletionResponse> chatCompletion({
    required String apiKey,
    required ChatCompletionRequest request,
  }) async {
    final response = await Api.post(
      requestAcc: PostRequestAcc(
        url: '$_baseUrl/chat/completions',
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

  static Future<ModelList> listModels({required String apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: '$_baseUrl/models',
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
