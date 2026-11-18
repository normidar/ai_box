/// プロンプトキャッシュを保つ時間（Anthropic のモデルだけが選べる）。
enum OpenRouterCacheTtl {
  /// 5 分（既定。`ttl` を送らない）。Anthropic の書き込みは入力の 1.25 倍。
  fiveMinutes,

  /// 1 時間（`ttl: "1h"`、Anthropic のモデルだけに付ける）。書き込みは入力の 2 倍なので、
  /// 次のリクエストまでの間隔が 5〜60 分のことが多いときだけ得になる。
  oneHour,
}

/// OpenAI 形式のリクエストボディ [body] を、OpenRouter のプロンプトキャッシュが
/// 効くように整える（その場で書き換える）。
///
/// AI LABO で 2026-11-18 に OpenRouter で実測した結果に合わせている:
///
/// - [sessionId] を `session_id` として送る（全モデル）。OpenRouter は同じモデルを複数の
///   提供元へ振り分け、キャッシュは提供元ごとにある。`session_id` があると最初から同じ
///   提供元へ送り続ける（DeepSeek・GLM・MiniMax では無いと 2 回目が別の提供元へ行き、
///   キャッシュが外れることが多かった）。
/// - [promptCaching] なら、`anthropic/*` と `qwen/*` のモデルにだけ `cache_control` を付ける。
///   この 2 つは区切りまでしかキャッシュしない（他は自動でキャッシュする。Gemini に付けると
///   明示的なキャッシュが毎回作られ、かえって高くなった）。区切りは 2 か所: 最後の system
///   メッセージと、文字のある最後のメッセージ（ツールの結果を含む）。
/// - [ttl] が [OpenRouterCacheTtl.oneHour] なら `anthropic/*` の区切りに `ttl: "1h"` を付ける
///   （Qwen は時間を選べない）。
void applyOpenRouterPromptCache(
  Map<String, dynamic> body, {
  required bool promptCaching,
  OpenRouterCacheTtl ttl = OpenRouterCacheTtl.fiveMinutes,
  String? sessionId,
}) {
  if (sessionId != null) body['session_id'] = sessionId;
  if (!promptCaching) return;
  final model = body['model'];
  final messages = body['messages'];
  if (model is! String || messages is! List) return;
  final anthropic = model.startsWith('anthropic/');
  if (!anthropic && !model.startsWith('qwen/')) return;
  final cacheControl =
      anthropic && ttl == OpenRouterCacheTtl.oneHour
          ? const {'type': 'ephemeral', 'ttl': '1h'}
          : const {'type': 'ephemeral'};

  for (final message in messages.reversed) {
    if (message is Map<String, dynamic> && message['role'] == 'system') {
      _markLastText(message, cacheControl);
      break;
    }
  }
  for (final message in messages.reversed) {
    if (message is Map<String, dynamic> &&
        _markLastText(message, cacheControl)) {
      break;
    }
  }
}

/// [message] の最後の文字の部分に [cacheControl] を付ける。文字列の content は
/// 部分の配列にする。文字が無ければ false（`buildOpenAiBody` が作る
/// `Map<String, dynamic>` 以外の部分は書き換えずに飛ばす）。
bool _markLastText(
  Map<String, dynamic> message,
  Map<String, String> cacheControl,
) {
  final content = message['content'];
  if (content is String) {
    if (content.isEmpty) return false;
    message['content'] = [
      {'type': 'text', 'text': content, 'cache_control': cacheControl},
    ];
    return true;
  }
  if (content is! List) return false;
  for (final part in content.reversed) {
    if (part is Map<String, dynamic> &&
        part['type'] == 'text' &&
        part['text'] is String) {
      part['cache_control'] = cacheControl;
      return true;
    }
  }
  return false;
}
