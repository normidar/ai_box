import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grok_box/src/freezed/chat_completion/response/chat_completion_response_choice/chat_completion_response_choice.dart';
import 'package:grok_box/src/freezed/chat_completion/response/chat_completion_response_usage/chat_completion_response_usage.dart';

part 'chat_completion_response.freezed.dart';
part 'chat_completion_response.g.dart';

/// https://docs.x.ai/docs/api-reference#chat-completions
@freezed
abstract class ChatCompletionResponse with _$ChatCompletionResponse {
  factory ChatCompletionResponse({
    required List<ChatCompletionResponseChoice> choices,
    required int created,
    required String id,
    required String model,
    required String object,
    List<Map<String, dynamic>>? citations,
    @JsonKey(name: 'system_fingerprint') String? systemFingerprint,
    ChatCompletionResponseUsage? usage,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);
  const ChatCompletionResponse._();
}
