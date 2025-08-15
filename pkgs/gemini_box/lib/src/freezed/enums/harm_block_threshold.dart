// ignore_for_file: constant_identifier_names

enum HarmBlockThreshold {
  HARM_BLOCK_THRESHOLD_UNSPECIFIED, // しきい値は指定されていません。
  BLOCK_LOW_AND_ABOVE, // NEGLIGIBLE のコンテンツは許可されます。
  BLOCK_MEDIUM_AND_ABOVE, // NEGLIGIBLE と LOW のコンテンツは許可されます。
  BLOCK_ONLY_HIGH, // NEGLIGIBLE、LOW、MEDIUM のコンテンツは許可されます。
  BLOCK_NONE, // すべてのコンテンツが許可されます。
  OFF // 安全フィルタをオフにします。
}
