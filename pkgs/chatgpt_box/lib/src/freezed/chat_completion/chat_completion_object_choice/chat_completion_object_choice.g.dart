// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_object_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionObjectChoice _$ChatCompletionObjectChoiceFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionObjectChoice(
  index: (json['index'] as num).toInt(),
  finishReason: json['finish_reason'] as String,
  message: ChatCompletionObjectChoiceMessage.fromJson(
    json['message'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChatCompletionObjectChoiceToJson(
  _ChatCompletionObjectChoice instance,
) => <String, dynamic>{
  'index': instance.index,
  'finish_reason': instance.finishReason,
  'message': instance.message,
};
