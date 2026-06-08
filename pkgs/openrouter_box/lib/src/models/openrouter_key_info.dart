/// OpenRouter `/key` が返す API キーの情報。
///
/// 残高上限（[limit]）・利用済み（[usage]）・残り（[limitRemaining]）などを保持する。
class OpenRouterKeyInfo {
  const OpenRouterKeyInfo({
    required this.raw,
    this.label,
    this.usage,
    this.limit,
    this.limitRemaining,
    this.isFreeTier,
  });

  /// JSON から生成する。`{"data": {...}}` の内側・外側どちらでも受け付ける。
  factory OpenRouterKeyInfo.fromJson(Map<String, dynamic> json) {
    final data = (json['data'] as Map<String, dynamic>?) ?? json;
    return OpenRouterKeyInfo(
      label: data['label'] as String?,
      usage: _toDouble(data['usage']),
      limit: _toDouble(data['limit']),
      limitRemaining: _toDouble(data['limit_remaining']),
      isFreeTier: data['is_free_tier'] as bool?,
      raw: data,
    );
  }

  /// キーのラベル（マスクされた表示名）。
  final String? label;

  /// これまでの利用額（USD）。
  final double? usage;

  /// 利用上限（USD）。`null` は無制限。
  final double? limit;

  /// 残り利用可能額（USD）。`null` は無制限。
  final double? limitRemaining;

  /// 無料ティアのキーか。
  final bool? isFreeTier;

  /// 元の JSON。
  final Map<String, dynamic> raw;

  static double? _toDouble(Object? v) {
    if (v == null) return null;
    if (v is num) return v.toDouble();
    return double.tryParse(v.toString());
  }
}
