import 'package:api_http/api_http.dart';
import 'package:perplexity_box/perplexity_box.dart';

class PerplexityCore {
  static const _baseUrl = 'https://api.perplexity.ai';

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

  static RestHeaders _getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }
}
