// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatCompletionRequest _$ChatCompletionRequestFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionRequest(
  model: json['model'] as String,
  messages:
      (json['messages'] as List<dynamic>)
          .map(
            (e) => ChatCompletionRequestMessage.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  maxCompletionTokens: (json['max_completion_tokens'] as num?)?.toInt(),
  seed: (json['seed'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatCompletionRequestToJson(
  _ChatCompletionRequest instance,
) => <String, dynamic>{
  'model': instance.model,
  'messages': instance.messages,
  'max_completion_tokens': instance.maxCompletionTokens,
  'seed': instance.seed,
};
