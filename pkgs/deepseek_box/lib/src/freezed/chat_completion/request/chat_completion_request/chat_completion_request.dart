import 'package:deepseek_box/src/freezed/chat_completion/request/chat_completion_message/chat_completion_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

/// https://api-docs.deepseek.com/api/create-chat-completion
@freezed
abstract class ChatCompletionRequest with _$ChatCompletionRequest {
  factory ChatCompletionRequest({
    required List<ChatCompletionMessage> messages,
    required String model,
    @JsonKey(name: 'frequency_penalty') double? frequencyPenalty,
    @JsonKey(name: 'max_tokens') int? maxTokens,
    @JsonKey(name: 'presence_penalty') double? presencePenalty,
    @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
    int? seed,
    List<String>? stop,
    bool? stream,
    double? temperature,
    @JsonKey(name: 'top_p') double? topP,
    List<Map<String, dynamic>>? tools,
    @JsonKey(name: 'tool_choice') dynamic toolChoice,
    bool? logprobs,
    @JsonKey(name: 'top_logprobs') int? topLogprobs,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
  const ChatCompletionRequest._();
}
