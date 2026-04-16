import 'package:deepseek_box/src/freezed/chat_completion/response/chat_completion_response_choice/chat_completion_response_choice.dart';
import 'package:deepseek_box/src/freezed/chat_completion/response/chat_completion_response_usage/chat_completion_response_usage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response.freezed.dart';
part 'chat_completion_response.g.dart';

/// https://api-docs.deepseek.com/api/create-chat-completion
@freezed
abstract class ChatCompletionResponse with _$ChatCompletionResponse {
  factory ChatCompletionResponse({
    required List<ChatCompletionResponseChoice> choices,
    required int created,
    required String id,
    required String model,
    required String object,
    @JsonKey(name: 'system_fingerprint') String? systemFingerprint,
    ChatCompletionResponseUsage? usage,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);
  const ChatCompletionResponse._();
}
