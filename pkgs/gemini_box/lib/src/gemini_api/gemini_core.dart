import 'package:ai_box/ai_box.dart';
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

  /// HTTP リクエストを実行し、JSON マップを取り出す。
  ///
  /// 通信失敗は [LLMNetworkException]、非 2xx は [LLMException.fromHttp] に
  /// 正規化する。
  static Future<Map<String, dynamic>> requestJson(
    Future<ac.ResponseAcc> Function() send,
  ) async {
    ac.ResponseAcc response;
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
    final mapData = body is ac.MapJsonResponseBody ? body.data : null;
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
