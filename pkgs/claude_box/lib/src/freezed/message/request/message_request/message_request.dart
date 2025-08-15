import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_request.freezed.dart';
part 'message_request.g.dart';

@freezed
abstract class MessageContent with _$MessageContent {
  factory MessageContent({
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'content') required dynamic content,
  }) = _MessageContent;

  factory MessageContent.fromJson(Map<String, dynamic> json) =>
      _$MessageContentFromJson(json);
  const MessageContent._();
}

@freezed
abstract class MessageRequest with _$MessageRequest {
  factory MessageRequest({
    required String model,
    required List<MessageContent> messages,
    @JsonKey(name: 'max_tokens') required int maxTokens,
    @JsonKey(includeIfNull: false) String? system,
    @JsonKey(includeIfNull: false) double? temperature,
    @JsonKey(name: 'top_p', includeIfNull: false) double? topP,
    @JsonKey(name: 'top_k', includeIfNull: false) int? topK,
    @JsonKey(name: 'stop_sequences', includeIfNull: false)
    List<String>? stopSequences,
    @JsonKey(includeIfNull: false) bool? stream,
  }) = _MessageRequest;

  factory MessageRequest.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestFromJson(json);
  const MessageRequest._();
}
