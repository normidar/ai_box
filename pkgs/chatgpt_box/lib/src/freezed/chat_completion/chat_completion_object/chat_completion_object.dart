import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_object_choice/chat_completion_object_choice.dart';
import 'package:chatgpt_box/src/freezed/chat_completion/chat_completion_object_usage/chat_completion_object_usage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_object.freezed.dart';
part 'chat_completion_object.g.dart';

@freezed
abstract class ChatCompletionObject with _$ChatCompletionObject {
  factory ChatCompletionObject({
    required List<ChatCompletionObjectChoice> choices,
    required int created,
    required String id,
    required String model,
    required String object,
    @JsonKey(name: 'system_fingerprint') required String systemFingerprint,
    required ChatCompletionObjectUsage usage,
    @JsonKey(name: 'service_tier') String? serviceTier,
  }) = _ChatCompletionObject;

  factory ChatCompletionObject.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionObjectFromJson(json);
  const ChatCompletionObject._();
}
