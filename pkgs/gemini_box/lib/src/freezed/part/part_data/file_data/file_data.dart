import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_data.freezed.dart';
part 'file_data.g.dart';

@freezed
abstract class FileData with _$FileData {
  factory FileData({
    required String fileUri,
    @JsonKey(name: 'mime_type') String? mimeType,
  }) = _FileData;

  factory FileData.fromJson(Map<String, dynamic> json) =>
      _$FileDataFromJson(json);
  const FileData._();
}
