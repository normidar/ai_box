import 'package:api_http/api_http.dart';
import 'package:chatgpt_box/src/core/chatgpt_core.dart';
import 'package:chatgpt_box/src/freezed/model/model/model.dart';
import 'package:chatgpt_box/src/freezed/model/model_list/model_list.dart';

class ModelsCore {
  static Future<ModelList> listModels({required String apiKey}) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.openai.com/v1/models',
        headers: ChatGptCore.getHeaders(apiKey: apiKey),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return ModelList.fromJson(data);
      case _:
        throw Exception('Failed to get models: ${response.body}');
    }
  }

  static Future<Model> retrieveModel({
    required String apiKey,
    required String modelId,
  }) async {
    final response = await Api.get(
      requestAcc: GetRequestAcc(
        url: 'https://api.openai.com/v1/models/$modelId',
        headers: ChatGptCore.getHeaders(apiKey: apiKey),
      ),
    );
    switch (response.body) {
      case MapJsonResponseBody(:final data):
        return Model.fromJson(data);
      case _:
        throw Exception('Failed to get model: ${response.body}');
    }
  }
}
