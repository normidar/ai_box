// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafetySetting {
  HarmCategory get category;
  HarmBlockThreshold get threshold;

  /// Create a copy of SafetySetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SafetySettingCopyWith<SafetySetting> get copyWith =>
      _$SafetySettingCopyWithImpl<SafetySetting>(
          this as SafetySetting, _$identity);

  /// Serializes this SafetySetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SafetySetting &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, threshold);

  @override
  String toString() {
    return 'SafetySetting(category: $category, threshold: $threshold)';
  }
}

/// @nodoc
abstract mixin class $SafetySettingCopyWith<$Res> {
  factory $SafetySettingCopyWith(
          SafetySetting value, $Res Function(SafetySetting) _then) =
      _$SafetySettingCopyWithImpl;
  @useResult
  $Res call({HarmCategory category, HarmBlockThreshold threshold});
}

/// @nodoc
class _$SafetySettingCopyWithImpl<$Res>
    implements $SafetySettingCopyWith<$Res> {
  _$SafetySettingCopyWithImpl(this._self, this._then);

  final SafetySetting _self;
  final $Res Function(SafetySetting) _then;

  /// Create a copy of SafetySetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? threshold = null,
  }) {
    return _then(_self.copyWith(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as HarmCategory,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as HarmBlockThreshold,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SafetySetting extends SafetySetting {
  _SafetySetting({required this.category, required this.threshold}) : super._();
  factory _SafetySetting.fromJson(Map<String, dynamic> json) =>
      _$SafetySettingFromJson(json);

  @override
  final HarmCategory category;
  @override
  final HarmBlockThreshold threshold;

  /// Create a copy of SafetySetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SafetySettingCopyWith<_SafetySetting> get copyWith =>
      __$SafetySettingCopyWithImpl<_SafetySetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SafetySettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SafetySetting &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, threshold);

  @override
  String toString() {
    return 'SafetySetting(category: $category, threshold: $threshold)';
  }
}

/// @nodoc
abstract mixin class _$SafetySettingCopyWith<$Res>
    implements $SafetySettingCopyWith<$Res> {
  factory _$SafetySettingCopyWith(
          _SafetySetting value, $Res Function(_SafetySetting) _then) =
      __$SafetySettingCopyWithImpl;
  @override
  @useResult
  $Res call({HarmCategory category, HarmBlockThreshold threshold});
}

/// @nodoc
class __$SafetySettingCopyWithImpl<$Res>
    implements _$SafetySettingCopyWith<$Res> {
  __$SafetySettingCopyWithImpl(this._self, this._then);

  final _SafetySetting _self;
  final $Res Function(_SafetySetting) _then;

  /// Create a copy of SafetySetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? threshold = null,
  }) {
    return _then(_SafetySetting(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as HarmCategory,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as HarmBlockThreshold,
    ));
  }
}

// dart format on
