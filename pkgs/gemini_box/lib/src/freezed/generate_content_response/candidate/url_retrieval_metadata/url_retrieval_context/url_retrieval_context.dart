import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_retrieval_context.freezed.dart';
part 'url_retrieval_context.g.dart';

@freezed
abstract class UrlRetrievalContext with _$UrlRetrievalContext {
  factory UrlRetrievalContext({
    // このクラスのフィールドが将来的に追加される可能性があります
    String? dummyField,
  }) = _UrlRetrievalContext;

  factory UrlRetrievalContext.fromJson(Map<String, dynamic> json) =>
      _$UrlRetrievalContextFromJson(json);
  const UrlRetrievalContext._();
}
