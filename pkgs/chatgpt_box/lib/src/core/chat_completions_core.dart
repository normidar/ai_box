import 'package:api_http/api_http.dart';
import 'package:chatgpt_box/src/core/chatgpt_core.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_object/chat_completion_object.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_request/chat_completion_request.dart';

class ChatCompletionsCore {
  static Future<ChatCompletionObject> createChatCompletion({
    required String apiKey,
    required ChatCompletionRequest request,
  }) async {
    final data = await ChatGptCore.requestJson(
      () => Api.post(
        requestAcc: PostRequestAcc(
          url: 'https://api.openai.com/v1/chat/completions',
          headers: ChatGptCore.getHeaders(apiKey: apiKey),
          body: JsonRequestBody(request.toJson()),
        ),
      ),
    );
    return ChatCompletionObject.fromJson(data);
  }
}
