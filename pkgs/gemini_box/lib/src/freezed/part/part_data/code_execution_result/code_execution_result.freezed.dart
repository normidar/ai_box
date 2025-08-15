// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_execution_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeExecutionResult {
  Outcome get outcome;
  String? get output;

  /// Create a copy of CodeExecutionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CodeExecutionResultCopyWith<CodeExecutionResult> get copyWith =>
      _$CodeExecutionResultCopyWithImpl<CodeExecutionResult>(
          this as CodeExecutionResult, _$identity);

  /// Serializes this CodeExecutionResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CodeExecutionResult &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, outcome, output);

  @override
  String toString() {
    return 'CodeExecutionResult(outcome: $outcome, output: $output)';
  }
}

/// @nodoc
abstract mixin class $CodeExecutionResultCopyWith<$Res> {
  factory $CodeExecutionResultCopyWith(
          CodeExecutionResult value, $Res Function(CodeExecutionResult) _then) =
      _$CodeExecutionResultCopyWithImpl;
  @useResult
  $Res call({Outcome outcome, String? output});
}

/// @nodoc
class _$CodeExecutionResultCopyWithImpl<$Res>
    implements $CodeExecutionResultCopyWith<$Res> {
  _$CodeExecutionResultCopyWithImpl(this._self, this._then);

  final CodeExecutionResult _self;
  final $Res Function(CodeExecutionResult) _then;

  /// Create a copy of CodeExecutionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcome = null,
    Object? output = freezed,
  }) {
    return _then(_self.copyWith(
      outcome: null == outcome
          ? _self.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as Outcome,
      output: freezed == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CodeExecutionResult extends CodeExecutionResult {
  _CodeExecutionResult({required this.outcome, this.output}) : super._();
  factory _CodeExecutionResult.fromJson(Map<String, dynamic> json) =>
      _$CodeExecutionResultFromJson(json);

  @override
  final Outcome outcome;
  @override
  final String? output;

  /// Create a copy of CodeExecutionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodeExecutionResultCopyWith<_CodeExecutionResult> get copyWith =>
      __$CodeExecutionResultCopyWithImpl<_CodeExecutionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CodeExecutionResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeExecutionResult &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, outcome, output);

  @override
  String toString() {
    return 'CodeExecutionResult(outcome: $outcome, output: $output)';
  }
}

/// @nodoc
abstract mixin class _$CodeExecutionResultCopyWith<$Res>
    implements $CodeExecutionResultCopyWith<$Res> {
  factory _$CodeExecutionResultCopyWith(_CodeExecutionResult value,
          $Res Function(_CodeExecutionResult) _then) =
      __$CodeExecutionResultCopyWithImpl;
  @override
  @useResult
  $Res call({Outcome outcome, String? output});
}

/// @nodoc
class __$CodeExecutionResultCopyWithImpl<$Res>
    implements _$CodeExecutionResultCopyWith<$Res> {
  __$CodeExecutionResultCopyWithImpl(this._self, this._then);

  final _CodeExecutionResult _self;
  final $Res Function(_CodeExecutionResult) _then;

  /// Create a copy of CodeExecutionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? outcome = null,
    Object? output = freezed,
  }) {
    return _then(_CodeExecutionResult(
      outcome: null == outcome
          ? _self.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as Outcome,
      output: freezed == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
