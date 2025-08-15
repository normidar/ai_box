import 'package:api_http/api_http.dart';
import 'package:claude_box/src/freezed/message/request/message_request/message_request.dart';
import 'package:claude_box/src/freezed/message/response/message_response.dart';
import 'package:claude_box/src/freezed/models/list_models_response/list_models_response.dart';
import 'package:claude_box/src/freezed/models/model_info/model_info.dart';
import 'package:claude_box/src/freezed/models/request_header/request_header.dart';

class ClaudeCore {
  static Future<MessageResponse> createMessage({
    required RequestHeader requestHeader,
    required MessageRequest messageRequest,
  }) async {
    final response = await Api.post(
      requestAcc: PostRequestAcc(
        url: 'https://api.anthropic.com/v1/messages',
        headers: requestHeader.restHeaders,
        body: JsonRequestBody(messageRequest.toJson()),
      ),
    );

    final res = response.body;
    switch (res) {
      case MapJsonResponseBody(:final data):
        return MessageResponse.fromJson(data);
      default:
        throw Exception('Unknown response type: $res');
    }
  }

  static Future<ModelInfo> getAModel({
    required RequestHeader requestHeader,
    required String modelId,
  }) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.anthropic.com/v1/models/$modelId',
        headers: requestHeader.restHeaders,
      ),
    );

    if (response.statusCode != '200') {
      throw Exception('Failed to get model: ${response.statusCode}');
    }

    final res = response.body;
    switch (res) {
      case MapJsonResponseBody(:final data):
        return ModelInfo.fromJson(data);
      default:
        throw Exception('Unknown response type: $res');
    }
  }

  static Future<ListModelsResponse> listModels({
    required RequestHeader requestHeader,
  }) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.anthropic.com/v1/models',
        headers: requestHeader.restHeaders,
      ),
    );

    final res = response.body;
    switch (res) {
      case MapJsonResponseBody(:final data):
        return ListModelsResponse.fromJson(data);
      default:
        throw Exception('Unknown response type: $res');
    }
  }
}
