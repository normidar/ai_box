import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/harm_category.dart';
import 'package:gemini_box/src/freezed/enums/harm_probability.dart';

part 'safety_rating.freezed.dart';
part 'safety_rating.g.dart';

@freezed
abstract class SafetyRating with _$SafetyRating {
  factory SafetyRating({
    required HarmCategory category,
    required HarmProbability probability,
    bool? blocked,
  }) = _SafetyRating;

  factory SafetyRating.fromJson(Map<String, dynamic> json) =>
      _$SafetyRatingFromJson(json);
  const SafetyRating._();
}
