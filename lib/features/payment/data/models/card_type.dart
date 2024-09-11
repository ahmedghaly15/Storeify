import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_type.freezed.dart';

@freezed
class CardType with _$CardType {
  const factory CardType({
    required String image,
    required String nameKey,
  }) = _CardType;
}
