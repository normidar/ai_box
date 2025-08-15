import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';

class GeminiCore {
  static const _baseUrl = 'https://generativelanguage.googleapis.com/v1beta';

  /// Ref: https://ai.google.dev/api/generate-content#method:-models.generatecontent
  static Future<GenerateContentResponse> generateContent({
    required String apiKey,
    required String model,
    required RequestBody requestBody,
  }) async {
    final requestAcc = ac.PostRequestAcc(
      url: '$_baseUrl/models/$model:generateContent',
      queryParameters: {
        'key': apiKey,
      },
      body: ac.JsonRequestBody(requestBody.toJson()),
    );
    final response = await ac.Api.post(requestAcc: requestAcc);
    final body = response.body;
    switch (body) {
      case ac.MapJsonResponseBody():
        return GenerateContentResponse.fromJson(body.data);
      default:
        throw Exception('Invalid response body: $body');
    }
  }

  /// Ref: https://ai.google.dev/api/models#method:-models.list
  static Future<List<ModelInfo>> getModels({
    required String apiKey,
  }) async {
    final requestAcc = ac.GetRequestAcc(
      url: '$_baseUrl/models',
      queryParameters: {
        'key': apiKey,
        'pageSize': '1000',
      },
    );
    final response = await ac.Api.get(requestAcc: requestAcc);
    final body = response.body;
    switch (body) {
      case ac.MapJsonResponseBody():
        return (body.data['models'] as List)
            .cast<Map<String, dynamic>>()
            .map(ModelInfo.fromJson)
            .toList();
      default:
        throw Exception('Invalid response body: $body');
    }
  }
}
