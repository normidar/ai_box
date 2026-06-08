/// dart:io 連携ライブラリ。
///
/// `import 'package:ai_box/io.dart';` すると [File] から各種パーツを
/// 1 行で生成できる拡張が使えるようになる（ファイルを「入れるだけ」）。
///
/// ```dart
/// import 'package:ai_box/io.dart';
///
/// final msg = LLMContent.user('説明して', attachments: [
///   File('photo.png').toImagePart(),
///   File('doc.pdf').toFilePart(),
/// ]);
/// ```
library;

import 'dart:io';

import 'package:ai_box/src/content.dart';

/// dart:io の [File] から ai_box のパーツを生成する拡張。
extension LLMFileParts on File {
  /// 画像パーツを生成する（バイト列を同期読み込み）。
  LLMImagePart toImagePart({String? mimeType}) => LLMImagePart.bytes(
        readAsBytesSync(),
        mimeType: mimeType ?? _mimeFromPath(path, 'image/png'),
      );

  /// 音声パーツを生成する。
  LLMAudioPart toAudioPart({String? mimeType}) => LLMAudioPart.bytes(
        readAsBytesSync(),
        mimeType: mimeType ?? _mimeFromPath(path, 'audio/mpeg'),
      );

  /// 任意ファイル（PDF など）のパーツを生成する。
  LLMFilePart toFilePart({String? mimeType}) => LLMFilePart.bytes(
        readAsBytesSync(),
        mimeType: mimeType ?? _mimeFromPath(path, 'application/octet-stream'),
        filename: uri.pathSegments.isNotEmpty ? uri.pathSegments.last : null,
      );
}

String _mimeFromPath(String path, String fallback) {
  final dot = path.lastIndexOf('.');
  if (dot < 0) return fallback;
  final ext = path.substring(dot + 1).toLowerCase();
  return _mimeByExt[ext] ?? fallback;
}

const _mimeByExt = <String, String>{
  'png': 'image/png',
  'jpg': 'image/jpeg',
  'jpeg': 'image/jpeg',
  'gif': 'image/gif',
  'webp': 'image/webp',
  'heic': 'image/heic',
  'bmp': 'image/bmp',
  'pdf': 'application/pdf',
  'txt': 'text/plain',
  'md': 'text/markdown',
  'csv': 'text/csv',
  'json': 'application/json',
  'mp3': 'audio/mpeg',
  'wav': 'audio/wav',
  'ogg': 'audio/ogg',
  'm4a': 'audio/mp4',
  'aac': 'audio/aac',
  'flac': 'audio/flac',
  'mp4': 'video/mp4',
  'mov': 'video/quicktime',
  'webm': 'video/webm',
};
