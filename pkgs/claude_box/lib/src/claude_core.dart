import 'package:ai_box/provider_http.dart' as provider_http;
import 'package:api_http/api_http.dart';
import 'package:claude_box/src/freezed/message/request/message_request/message_request.dart';
import 'package:claude_box/src/freezed/message/response/message_response.dart';
import 'package:claude_box/src/freezed/models/list_models_response/list_models_response.dart';
import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:claude_box/src/freezed/models/request_header/request_header.dart';

class ClaudeCore {
  static const provider = 'claude';

  static Future<MessageResponse> createMessage({
    required RequestHeader requestHeader,
    required MessageRequest messageRequest,
  }) async {
    final data = await requestJson(
      () => Api.post(
        requestAcc: PostRequestAcc(
          url: 'https://api.anthropic.com/v1/messages',
          headers: requestHeader.restHeaders,
          body: JsonRequestBody(messageRequest.toJson()),
        ),
      ),
    );
    return MessageResponse.fromJson(data);
  }

  static Future<ModelInfo> getAModel({
    required RequestHeader requestHeader,
    required String modelId,
  }) async {
    final data = await requestJson(
      () => Api.get(
        requestAcc: GetRequestAcc(
          url: 'https://api.anthropic.com/v1/models/$modelId',
          headers: requestHeader.restHeaders,
        ),
      ),
    );
    return ModelInfo.fromJson(data);
  }

  static Future<ListModelsResponse> listModels({
    required RequestHeader requestHeader,
  }) async {
    final data = await requestJson(
      () => Api.get(
        requestAcc: GetRequestAcc(
          url: 'https://api.anthropic.com/v1/models',
          headers: requestHeader.restHeaders,
        ),
      ),
    );
    return ListModelsResponse.fromJson(data);
  }

  /// HTTP リクエストを実行し、JSON マップを取り出す
  /// （[provider_http.requestJson] への委譲）。
  static Future<Map<String, dynamic>> requestJson(
    Future<ResponseAcc> Function() send,
  ) =>
      provider_http.requestJson(provider: provider, send: send);
}
