import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_call.freezed.dart';
part 'function_call.g.dart';

@freezed
abstract class FunctionCall with _$FunctionCall {
  factory FunctionCall({
    required String name,
    Map<String, dynamic>? args,
    String? id,
  }) = _FunctionCall;

  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);
  const FunctionCall._();
}
