import 'package:ai_box/provider_http.dart' as provider_http;
import 'package:api_http/api_http.dart' as ac;
import 'package:gemini_box/gemini_box.dart';

class GeminiCore {
  static const provider = 'gemini';

  static const _baseUrl = 'https://generativelanguage.googleapis.com/v1beta';

  /// Ref: https://ai.google.dev/api/generate-content#method:-models.generatecontent
  static Future<GenerateContentResponse> generateContent({
    required String apiKey,
    required String model,
    required RequestBody requestBody,
  }) async {
    final data = await requestJson(
      () => ac.Api.post(
        requestAcc: ac.PostRequestAcc(
          url: '$_baseUrl/models/$model:generateContent',
          queryParameters: {
            'key': apiKey,
          },
          body: ac.JsonRequestBody(requestBody.toJson()),
        ),
      ),
    );
    return GenerateContentResponse.fromJson(data);
  }

  /// Ref: https://ai.google.dev/api/models#method:-models.list
  static Future<List<ModelInfo>> getModels({
    required String apiKey,
  }) async {
    final data = await requestJson(
      () => ac.Api.get(
        requestAcc: ac.GetRequestAcc(
          url: '$_baseUrl/models',
          queryParameters: {
            'key': apiKey,
            'pageSize': '1000',
          },
        ),
      ),
    );
    return ((data['models'] as List?) ?? const [])
        .cast<Map<String, dynamic>>()
        .map(ModelInfo.fromJson)
        .toList();
  }

  /// HTTP リクエストを実行し、JSON マップを取り出す
  /// （[provider_http.requestJson] への委譲）。
  static Future<Map<String, dynamic>> requestJson(
    Future<ac.ResponseAcc> Function() send,
  ) =>
      provider_http.requestJson(provider: provider, send: send);
}
