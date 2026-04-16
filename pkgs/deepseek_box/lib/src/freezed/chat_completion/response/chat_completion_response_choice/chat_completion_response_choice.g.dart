// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionResponseChoice _$ChatCompletionResponseChoiceFromJson(
        Map<String, dynamic> json) =>
    _ChatCompletionResponseChoice(
      index: (json['index'] as num).toInt(),
      message: ChatCompletionResponseMessage.fromJson(
          json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      logprobs: json['logprobs'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ChatCompletionResponseChoiceToJson(
        _ChatCompletionResponseChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
      'logprobs': instance.logprobs,
    };
