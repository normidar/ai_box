// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/harm_block_threshold.dart';
import 'package:gemini_box/src/freezed/enums/harm_category.dart';

part 'safety_setting.freezed.dart';
part 'safety_setting.g.dart';

/// Ref: https://ai.google.dev/api/generate-content#safetysetting
@freezed
abstract class SafetySetting with _$SafetySetting {
  factory SafetySetting({
    required HarmCategory category,
    required HarmBlockThreshold threshold,
  }) = _SafetySetting;

  factory SafetySetting.fromJson(Map<String, dynamic> json) =>
      _$SafetySettingFromJson(json);
  const SafetySetting._();
}
