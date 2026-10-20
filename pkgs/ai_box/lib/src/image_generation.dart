import 'package:ai_box/src/ai_base.dart';
import 'package:ai_box/src/content.dart';
import 'package:ai_box/src/response.dart';

/// 画像生成のリクエスト。
class ImageGenerationRequest {
  const ImageGenerationRequest({
    required this.model,
    required this.prompt,
    this.n = 1,
    this.size,
    this.aspectRatio,
  });

  /// 画像生成モデル ID（[ImageGenerator.getImageModels] のもの）。
  final String model;

  /// 生成する画像の説明。
  final String prompt;

  /// 枚数（モデルの上限を超えるとサービス側が拒否しうる）。
  final int n;

  /// `1024x1024` などの大きさ（OpenAI 形式。対応しないプロバイダーは無視）。
  final String? size;

  /// `16:9` などの縦横比（OpenRouter / xAI 形式。対応しないプロバイダーは無視）。
  final String? aspectRatio;
}

/// 画像生成の結果。
class ImageGenerationResponse {
  const ImageGenerationResponse({
    required this.images,
    this.usage,
    this.costUsd,
    this.revisedPrompt,
  });

  /// 生成された画像（バイト列か URL）。
  final List<LLMImagePart> images;

  /// トークン使用量（報告するプロバイダーのみ）。
  final LLMUsage? usage;

  /// サービスが報告した費用（USD。OpenRouter など報告するプロバイダーのみ）。
  final double? costUsd;

  /// サービスが書き換えたプロンプト（報告するプロバイダーのみ）。
  final String? revisedPrompt;
}

/// 画像生成に対応するプロバイダー。
///
/// チャット（`LLMAIBase`）とは別の機能として持つ（チャットはできても画像は
/// 作れないプロバイダー・モデルがあるため）。対応するプロバイダーは
/// `class Foo extends LLMAIBase with ImageGenerator` のように実装する。
mixin ImageGenerator on AIBase {
  /// 画像を生成する。失敗時は `LLMException`。
  Future<ImageGenerationResponse> generateImage(
    ImageGenerationRequest request,
  );

  /// 画像生成に使えるモデルの一覧。
  Future<List<AIModel>> getImageModels();
}
