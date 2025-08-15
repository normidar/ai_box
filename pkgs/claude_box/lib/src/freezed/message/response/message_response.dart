import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response.freezed.dart';
part 'message_response.g.dart';

@freezed
abstract class MessageResponse with _$MessageResponse {
  factory MessageResponse({
    required String id,
    required String type,
    required String role,
    required List<MessageResponseContent> content,
    required String model,
    @JsonKey(name: 'stop_reason') required String stopReason,
    required MessageUsage usage,
    @JsonKey(name: 'stop_sequence') String? stopSequence,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
  const MessageResponse._();
}

@freezed
abstract class MessageResponseContent with _$MessageResponseContent {
  factory MessageResponseContent({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'text') required String text,
  }) = _MessageResponseContent;

  factory MessageResponseContent.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseContentFromJson(json);
  const MessageResponseContent._();
}

@freezed
abstract class MessageUsage with _$MessageUsage {
  factory MessageUsage({
    @JsonKey(name: 'input_tokens') required int inputTokens,
    @JsonKey(name: 'output_tokens') required int outputTokens,
  }) = _MessageUsage;

  factory MessageUsage.fromJson(Map<String, dynamic> json) =>
      _$MessageUsageFromJson(json);
  const MessageUsage._();
}
