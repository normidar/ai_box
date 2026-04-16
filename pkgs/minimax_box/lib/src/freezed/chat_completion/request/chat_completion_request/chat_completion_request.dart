import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimax_box/src/freezed/chat_completion/request/chat_completion_message/chat_completion_message.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

/// https://platform.minimax.io/docs/api-reference/text-openai-api
@freezed
abstract class ChatCompletionRequest with _$ChatCompletionRequest {
  factory ChatCompletionRequest({
    required List<ChatCompletionMessage> messages,
    required String model,
    @JsonKey(name: 'max_tokens') int? maxTokens,
    double? temperature,
    @JsonKey(name: 'top_p') double? topP,
    List<String>? stop,
    int? seed,
    bool? stream,
    @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
    List<Map<String, dynamic>>? tools,
    @JsonKey(name: 'tool_choice') dynamic toolChoice,
    /// DeepSeek-R1系と同様にThinkingプロセスを分離して取得する
    @JsonKey(name: 'reasoning_split') bool? reasoningSplit,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
  const ChatCompletionRequest._();
}
