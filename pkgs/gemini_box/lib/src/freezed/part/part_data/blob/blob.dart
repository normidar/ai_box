import 'package:freezed_annotation/freezed_annotation.dart';

part 'blob.freezed.dart';
part 'blob.g.dart';

@freezed
abstract class Blob with _$Blob {
  factory Blob({
    @JsonKey(name: 'mime_type') required String mimeType,
    required String data,
  }) = _Blob;

  factory Blob.fromJson(Map<String, dynamic> json) => _$BlobFromJson(json);
  const Blob._();
}
