import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimax_box/src/freezed/chat_completion/response/chat_completion_response_choice/chat_completion_response_choice.dart';
import 'package:minimax_box/src/freezed/chat_completion/response/chat_completion_response_usage/chat_completion_response_usage.dart';

part 'chat_completion_response.freezed.dart';
part 'chat_completion_response.g.dart';

/// https://platform.minimax.io/docs/api-reference/text-openai-api
@freezed
abstract class ChatCompletionResponse with _$ChatCompletionResponse {
  factory ChatCompletionResponse({
    required List<ChatCompletionResponseChoice> choices,
    required int created,
    required String id,
    required String model,
    required String object,
    ChatCompletionResponseUsage? usage,
    /// コンテンツポリシー違反フラグ（入力側）
    @JsonKey(name: 'input_sensitive') bool? inputSensitive,
    /// コンテンツポリシー違反フラグ（出力側）
    @JsonKey(name: 'output_sensitive') bool? outputSensitive,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);
  const ChatCompletionResponse._();
}
