import 'package:api_http/api_http.dart';

class ChatGptCore {
  static RestHeaders getHeaders({required String apiKey}) {
    return RestHeaders({
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    });
  }
}
