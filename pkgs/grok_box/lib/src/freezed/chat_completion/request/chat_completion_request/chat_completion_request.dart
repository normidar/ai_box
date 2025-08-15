import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grok_box/src/freezed/chat_completion/request/chat_completion_message/chat_completion_message.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

/// https://docs.x.ai/docs/api-reference?cluster=us-east-1#chat-completions
@freezed
abstract class ChatCompletionRequest with _$ChatCompletionRequest {
  factory ChatCompletionRequest({
    required List<ChatCompletionMessage> messages,
    required String model,
    bool? deferred,
    @JsonKey(name: 'frequency_penalty') double? frequencyPenalty,
    @JsonKey(name: 'logit_bias') Map<String, dynamic>? logitBias,
    bool? logprobs,
    @JsonKey(name: 'max_completion_tokens') int? maxCompletionTokens,
    @JsonKey(name: 'max_tokens') int? maxTokens,
    int? n,
    @JsonKey(name: 'parallel_tool_calls') bool? parallelToolCalls,
    @JsonKey(name: 'presence_penalty') double? presencePenalty,
    @JsonKey(name: 'reasoning_effort') String? reasoningEffort,
    @JsonKey(name: 'response_format') Map<String, dynamic>? responseFormat,
    @JsonKey(name: 'search_parameters') Map<String, dynamic>? searchParameters,
    int? seed,
    List<String>? stop,
    bool? stream,
    @JsonKey(name: 'stream_options') Map<String, dynamic>? streamOptions,
    double? temperature,
    @JsonKey(name: 'tool_choice') dynamic toolChoice,
    List<Map<String, dynamic>>? tools,
    @JsonKey(name: 'top_logprobs') int? topLogprobs,
    @JsonKey(name: 'top_p') double? topP,
    String? user,
    @JsonKey(name: 'web_search_options') Map<String, dynamic>? webSearchOptions,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
  const ChatCompletionRequest._();
}
