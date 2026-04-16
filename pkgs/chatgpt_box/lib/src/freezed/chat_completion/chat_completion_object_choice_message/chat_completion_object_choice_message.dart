import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_object_choice_message.freezed.dart';
part 'chat_completion_object_choice_message.g.dart';

@freezed
abstract class ChatCompletionObjectChoiceMessage
    with _$ChatCompletionObjectChoiceMessage {
  factory ChatCompletionObjectChoiceMessage({
    required String role,
    /// テキストのみの場合は String、マルチモーダルの場合は `List<dynamic>`。
    dynamic content,
    String? refusal,
    /// ツール呼び出しリスト。finish_reason が tool_calls のとき設定される。
    @JsonKey(name: 'tool_calls') List<Map<String, dynamic>>? toolCalls,
    /// 音声レスポンス（gpt-4o-audio 系モデルのみ）。
    Map<String, dynamic>? audio,
  }) = _ChatCompletionObjectChoiceMessage;

  factory ChatCompletionObjectChoiceMessage.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatCompletionObjectChoiceMessageFromJson(json);
  const ChatCompletionObjectChoiceMessage._();
}
