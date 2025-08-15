// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_object_choice_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionObjectChoiceMessage _$ChatCompletionObjectChoiceMessageFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObjectChoiceMessage(
  role: json['role'] as String,
  content: json['content'] as String?,
  refusal: json['refusal'] as String?,
);

Map<String, dynamic> _$ChatCompletionObjectChoiceMessageToJson(
  _ChatCompletionObjectChoiceMessage instance,
) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
  'refusal': instance.refusal,
};
