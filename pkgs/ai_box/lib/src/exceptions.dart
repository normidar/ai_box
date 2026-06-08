/// ai_box が投げる例外の基底 sealed クラス。
///
/// すべての LLM プロバイダーは API 呼び出しの失敗をこの階層へ正規化する。
/// 呼び出し側は `switch` で全ケースを網羅的に処理できる。
///
/// ```dart
/// try {
///   await ai.generateText(model: 'gpt-4o', message: 'hi');
/// } on LLMException catch (e) {
///   final msg = switch (e) {
///     LLMAuthException() => 'APIキーが無効です',
///     LLMRateLimitException() => 'レート制限に達しました',
///     LLMInvalidRequestException() => 'リクエストが不正です: ${e.message}',
///     LLMServerException() => 'サーバーエラー',
///     LLMNetworkException() => 'ネットワークエラー',
///     LLMUnknownException() => '不明なエラー',
///   };
///   print(msg);
/// }
/// ```
sealed class LLMException implements Exception {
  const LLMException(
    this.message, {
    this.statusCode,
    this.provider,
    this.code,
    this.raw,
  });

  /// HTTP ステータスコードとレスポンスボディから適切な例外型を生成する。
  factory LLMException.fromHttp(
    int statusCode, {
    String? provider,
    Object? body,
  }) {
    final message =
        _extractMessage(body) ?? 'Request failed with status $statusCode';
    final code = _extractCode(body);
    if (statusCode == 401 || statusCode == 403) {
      return LLMAuthException(
        message,
        statusCode: statusCode,
        provider: provider,
        code: code,
        raw: body,
      );
    }
    if (statusCode == 429) {
      return LLMRateLimitException(
        message,
        statusCode: statusCode,
        provider: provider,
        code: code,
        raw: body,
      );
    }
    if (statusCode >= 400 && statusCode < 500) {
      return LLMInvalidRequestException(
        message,
        statusCode: statusCode,
        provider: provider,
        code: code,
        raw: body,
      );
    }
    if (statusCode >= 500) {
      return LLMServerException(
        message,
        statusCode: statusCode,
        provider: provider,
        code: code,
        raw: body,
      );
    }
    return LLMUnknownException(
      message,
      statusCode: statusCode,
      provider: provider,
      code: code,
      raw: body,
    );
  }

  /// 人間可読のエラーメッセージ。
  final String message;

  /// HTTP ステータスコード（取得できた場合）。
  final int? statusCode;

  /// 発生元プロバイダー名（'openai' / 'claude' / 'gemini' など）。
  final String? provider;

  /// プロバイダー固有のエラーコード／タイプ文字列（取得できた場合）。
  final String? code;

  /// 元の例外・レスポンスボディなど（デバッグ用）。
  final Object? raw;

  static String? _extractMessage(Object? body) {
    if (body is Map) {
      final error = body['error'];
      if (error is Map && error['message'] is String) {
        return error['message'] as String;
      }
      if (error is String) return error;
      if (body['message'] is String) return body['message'] as String;
    }
    return null;
  }

  static String? _extractCode(Object? body) {
    if (body is Map) {
      final error = body['error'];
      if (error is Map) {
        final c = error['type'] ?? error['code'];
        if (c != null) return c.toString();
      }
      final c = body['code'];
      if (c != null) return c.toString();
    }
    return null;
  }

  @override
  String toString() {
    final p = provider != null ? '[$provider] ' : '';
    final s = statusCode != null ? ' (HTTP $statusCode)' : '';
    return 'LLMException: $p$message$s';
  }
}

/// 認証エラー（HTTP 401 / 403）。APIキーが無効・権限不足など。
final class LLMAuthException extends LLMException {
  const LLMAuthException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}

/// レート制限エラー（HTTP 429）。
final class LLMRateLimitException extends LLMException {
  const LLMRateLimitException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}

/// リクエスト不正エラー（HTTP 4xx）。パラメータ誤り・モデル名誤りなど。
final class LLMInvalidRequestException extends LLMException {
  const LLMInvalidRequestException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}

/// サーバーエラー（HTTP 5xx）。
final class LLMServerException extends LLMException {
  const LLMServerException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}

/// ネットワークエラー。接続失敗・タイムアウト・レスポンス解析不能など。
final class LLMNetworkException extends LLMException {
  const LLMNetworkException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}

/// 上記いずれにも分類できない不明なエラー。
final class LLMUnknownException extends LLMException {
  const LLMUnknownException(
    super.message, {
    super.statusCode,
    super.provider,
    super.code,
    super.raw,
  });
}
