import 'package:freezed_annotation/freezed_annotation.dart';

part 'thinking_config.freezed.dart';
part 'thinking_config.g.dart';

@freezed
abstract class ThinkingConfig with _$ThinkingConfig {
  factory ThinkingConfig({
    required bool includeThoughts,
    required int thinkingBudget,
  }) = _ThinkingConfig;

  factory ThinkingConfig.fromJson(Map<String, dynamic> json) =>
      _$ThinkingConfigFromJson(json);
  const ThinkingConfig._();
}
