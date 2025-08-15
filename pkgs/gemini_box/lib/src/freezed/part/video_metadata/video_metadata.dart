import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_metadata.freezed.dart';
part 'video_metadata.g.dart';

@freezed
abstract class VideoMetadata with _$VideoMetadata {
  factory VideoMetadata({
    String? startOffset,
    String? endOffset,
    num? fps,
  }) = _VideoMetadata;

  factory VideoMetadata.fromJson(Map<String, dynamic> json) =>
      _$VideoMetadataFromJson(json);
  const VideoMetadata._();
}
