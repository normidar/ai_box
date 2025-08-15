import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemini_box/src/freezed/enums/modality.dart';

part 'usage_metadata.freezed.dart';
part 'usage_metadata.g.dart';

@freezed
abstract class ModalityTokenCount with _$ModalityTokenCount {
  factory ModalityTokenCount({
    /// The modality of the tokens.
    required Modality modality,

    /// The number of tokens for this modality.
    required int tokenCount,
  }) = _ModalityTokenCount;

  factory ModalityTokenCount.fromJson(Map<String, dynamic> json) =>
      _$ModalityTokenCountFromJson(json);
  const ModalityTokenCount._();
}

/// https://ai.google.dev/api/generate-content#usagemetadata
@freezed
abstract class UsageMetadata with _$UsageMetadata {
  factory UsageMetadata({
    /// The number of tokens in the prompt.
    int? promptTokenCount,

    /// Number of tokens in the cached part of the prompt.
    int? cachedContentTokenCount,

    /// Total number of tokens across all the generated response candidates.
    int? candidatesTokenCount,

    /// Number of tokens in the tool use prompt.
    int? toolUsePromptTokenCount,

    /// Number of tokens in the thoughts.
    int? thoughtsTokenCount,

    /// Total token count for the generation request
    ///  (prompt + response candidates).
    int? totalTokenCount,

    /// Breakdown of tokens used in the prompt for different modalities.
    List<ModalityTokenCount>? promptTokensDetails,

    /// Breakdown of tokens used in the cached content for different modalities.
    List<ModalityTokenCount>? cacheTokensDetails,

    /// Breakdown of tokens used in the candidates for different modalities.
    List<ModalityTokenCount>? candidatesTokensDetails,

    /// Breakdown of tokens used in the tool use prompt
    ///  for different modalities.
    List<ModalityTokenCount>? toolUsePromptTokensDetails,
  }) = _UsageMetadata;

  factory UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);
  const UsageMetadata._();
}
