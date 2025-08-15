import 'package:freezed_annotation/freezed_annotation.dart';

part 'web.freezed.dart';
part 'web.g.dart';

@freezed
abstract class Web with _$Web {
  factory Web({
    String? uri,
    String? title,
  }) = _Web;

  factory Web.fromJson(Map<String, dynamic> json) => _$WebFromJson(json);
  const Web._();
}
