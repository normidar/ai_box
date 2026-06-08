import 'dart:convert';
import 'dart:typed_data';

/// 発言者のロール。
enum LLMRole { model, user, system }

/// 1 つのメッセージ（1 ロール分）を表す。
///
/// 本文は [parts] が唯一の真実。テキストのみを扱いたい場合は
/// [LLMContent.text] / [LLMContent.user] などのファクトリが便利。
/// 画像・音声・ファイルは [LLMContent.user] の `attachments` で添付する。
///
/// ```dart
/// // テキストのみ
/// LLMContent.user('こんにちは');
///
/// // 画像付き（バイト列）
/// LLMContent.user('この画像を説明して', attachments: [
///   LLMImagePart.bytes(bytes, mimeType: 'image/png'),
/// ]);
///
/// // dart:io の File から（import 'package:ai_box/io.dart';）
/// LLMContent.user('説明して', attachments: [file.toImagePart()]);
/// ```
class LLMContent {
  const LLMContent({required this.role, required this.parts});

  /// テキストのみのメッセージを作る。
  factory LLMContent.text(LLMRole role, String text) =>
      LLMContent(role: role, parts: [LLMTextPart(text)]);

  /// user ロールのメッセージ。画像・音声・ファイルなどを [attachments] で添付できる。
  factory LLMContent.user(
    String text, {
    List<LLMContentPart> attachments = const [],
  }) =>
      LLMContent(
        role: LLMRole.user,
        parts: [
          if (text.isNotEmpty) LLMTextPart(text),
          ...attachments,
        ],
      );

  /// system ロールのメッセージ。
  factory LLMContent.system(String text) =>
      LLMContent.text(LLMRole.system, text);

  /// model（assistant）ロールのメッセージ。
  factory LLMContent.model(String text) => LLMContent.text(LLMRole.model, text);

  final LLMRole role;

  /// メッセージを構成するパーツ。テキスト・画像・音声・ファイル・ツール呼び出しなど。
  final List<LLMContentPart> parts;

  /// テキストパートを連結した文字列。マルチモーダルでもテキスト部分だけを返す。
  String get text => parts.whereType<LLMTextPart>().map((p) => p.text).join();

  /// [text] のエイリアス（後方互換）。
  String get content => text;

  /// 画像パーツを含むか。
  bool get hasImages => parts.any((p) => p is LLMImagePart);

  /// 画像パーツの一覧。
  List<LLMImagePart> get images => parts.whereType<LLMImagePart>().toList();

  /// 音声パーツを含むか。
  bool get hasAudio => parts.any((p) => p is LLMAudioPart);

  /// 音声パーツの一覧。
  List<LLMAudioPart> get audioList => parts.whereType<LLMAudioPart>().toList();

  /// ファイルパーツを含むか。
  bool get hasFiles => parts.any((p) => p is LLMFilePart);

  /// ファイルパーツの一覧。
  List<LLMFilePart> get files => parts.whereType<LLMFilePart>().toList();

  /// ツール呼び出しパーツを含むか。
  bool get hasToolCalls => parts.any((p) => p is LLMToolCallPart);

  /// ツール呼び出しパーツの一覧。
  List<LLMToolCallPart> get toolCalls =>
      parts.whereType<LLMToolCallPart>().toList();

  /// 推論（thinking）パーツを含むか。
  bool get hasReasoning => parts.any((p) => p is LLMReasoningPart);

  /// 推論（thinking）テキストを連結した文字列。
  String get reasoning =>
      parts.whereType<LLMReasoningPart>().map((p) => p.text).join();

  @override
  String toString() => 'LLMContent(role: $role, parts: ${parts.length})';
}

/// メッセージを構成する 1 パーツ。入力・出力どちらにも使う sealed クラス。
///
/// `switch` で全ケースを網羅的に処理できる。
sealed class LLMContentPart {}

/// テキストパーツ。
final class LLMTextPart extends LLMContentPart {
  LLMTextPart(this.text);

  final String text;
}

/// 画像パーツ（入力・出力共通）。URL またはバイト列のいずれかを保持する。
///
/// - 入力: `LLMImagePart.bytes(...)` / `LLMImagePart.url(...)`
/// - 出力: プロバイダーが生成画像を [bytes] で、参照画像を [url] で返す。
final class LLMImagePart extends LLMContentPart {
  /// 通常の URL または `data:` URI の文字列から作る。
  LLMImagePart.url(this.url)
      : bytes = null,
        mimeType = null;

  /// 生のバイト列から作る。[mimeType] は `image/png` など。
  LLMImagePart.bytes(Uint8List data, {this.mimeType = 'image/png'})
      : bytes = data,
        url = null;

  /// `data:image/png;base64,...` 形式の data URI からバイト列を復元する。
  /// 解析できない場合は URL として保持する。
  factory LLMImagePart.dataUri(String dataUri) {
    final parsed = _parseDataUri(dataUri);
    if (parsed == null) return LLMImagePart.url(dataUri);
    return LLMImagePart.bytes(parsed.$2, mimeType: parsed.$1);
  }

  /// 参照 URL（または data URI）。バイト列で保持する場合は null。
  final String? url;

  /// 生のバイト列。URL で保持する場合は null。
  final Uint8List? bytes;

  /// MIME タイプ（バイト列の場合）。
  final String? mimeType;

  /// バイト列を保持しているか。
  bool get hasBytes => bytes != null;

  /// URL を保持しているか。
  bool get isUrl => url != null;

  /// base64 エンコード済み文字列（バイト列を持つ場合のみ）。
  String? get base64Data => bytes == null ? null : base64Encode(bytes!);

  /// 送信用に URL もしくは data URI 文字列へ変換する。
  String get asUrlOrDataUri =>
      url ?? 'data:${mimeType ?? 'image/png'};base64,${base64Encode(bytes!)}';
}

/// 音声パーツ（入力・出力共通）。
final class LLMAudioPart extends LLMContentPart {
  /// URL から作る。
  LLMAudioPart.url(this.url, {this.mimeType, this.transcript}) : bytes = null;

  /// 生のバイト列から作る。
  LLMAudioPart.bytes(Uint8List data, {this.mimeType, this.transcript})
      : bytes = data,
        url = null;

  /// base64 文字列から作る。
  factory LLMAudioPart.base64(
    String base64Data, {
    String? mimeType,
    String? transcript,
  }) =>
      LLMAudioPart.bytes(
        base64Decode(base64Data),
        mimeType: mimeType,
        transcript: transcript,
      );

  /// 参照 URL。バイト列で保持する場合は null。
  final String? url;

  /// 生のバイト列。
  final Uint8List? bytes;

  /// MIME タイプ（`audio/mp3`、`audio/wav` など）。
  final String? mimeType;

  /// 音声のテキスト書き起こし（利用可能な場合のみ）。
  final String? transcript;

  /// バイト列を保持しているか。
  bool get hasBytes => bytes != null;

  /// base64 エンコード済み文字列（バイト列を持つ場合のみ）。
  String? get base64Data => bytes == null ? null : base64Encode(bytes!);
}

/// 任意ファイル（PDF などのドキュメント）パーツ。
final class LLMFilePart extends LLMContentPart {
  /// URL（または provider のファイル URI）から作る。
  LLMFilePart.url(this.url, {this.mimeType, this.filename}) : bytes = null;

  /// 生のバイト列から作る。
  LLMFilePart.bytes(Uint8List data, {required this.mimeType, this.filename})
      : bytes = data,
        url = null;

  /// 参照 URL。
  final String? url;

  /// 生のバイト列。
  final Uint8List? bytes;

  /// MIME タイプ（`application/pdf` など）。
  final String? mimeType;

  /// ファイル名（任意）。
  final String? filename;

  /// バイト列を保持しているか。
  bool get hasBytes => bytes != null;

  /// base64 エンコード済み文字列（バイト列を持つ場合のみ）。
  String? get base64Data => bytes == null ? null : base64Encode(bytes!);
}

/// ツール呼び出しパーツ（出力）。モデルが関数を呼び出す際に返される。
final class LLMToolCallPart extends LLMContentPart {
  LLMToolCallPart({
    required this.id,
    required this.name,
    required this.arguments,
  });

  final String id;
  final String name;

  /// 関数に渡す引数（パース済み）。
  final Map<String, dynamic> arguments;
}

/// ツール実行結果パーツ（入力）。前ターンの [LLMToolCallPart] への応答を返す。
final class LLMToolResultPart extends LLMContentPart {
  LLMToolResultPart({
    required this.toolCallId,
    required this.content,
    this.toolName,
    this.isError = false,
  });

  /// 対応する [LLMToolCallPart.id]。
  final String toolCallId;

  /// 実行結果（文字列。JSON の場合はその文字列）。
  final String content;

  /// 関数名（Gemini など名前で紐付けるプロバイダー向け）。
  final String? toolName;

  /// 実行がエラーだったか。
  final bool isError;
}

/// 推論（thinking / reasoning）パーツ（出力）。
final class LLMReasoningPart extends LLMContentPart {
  LLMReasoningPart(this.text, {this.signature});

  final String text;

  /// 署名付き thinking（Claude）の署名。
  final String? signature;
}

/// コード実行パーツ（Gemini）。モデルが実行を要求したコード。
final class LLMCodeExecutionPart extends LLMContentPart {
  LLMCodeExecutionPart({required this.code, required this.language});

  final String code;
  final String language;
}

/// コード実行結果パーツ（Gemini）。
final class LLMCodeExecutionResultPart extends LLMContentPart {
  LLMCodeExecutionResultPart({required this.outcome, this.output});

  /// 実行結果: ok / failed / deadline_exceeded など。
  final String outcome;
  final String? output;
}

/// `data:<mime>;base64,<data>` を (mimeType, bytes) に分解する。
(String, Uint8List)? _parseDataUri(String s) {
  if (!s.startsWith('data:')) return null;
  final comma = s.indexOf(',');
  if (comma < 0) return null;
  final meta = s.substring(5, comma);
  final dataPart = s.substring(comma + 1);
  final mime = meta.split(';').first;
  try {
    final bytes = base64Decode(dataPart);
    return (mime.isEmpty ? 'application/octet-stream' : mime, bytes);
  } on FormatException {
    return null;
  }
}
