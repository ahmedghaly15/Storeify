import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'card_type.freezed.dart';
part 'card_type.g.dart';

@HiveType(typeId: HiveTypeIds.cardType)
@freezed
class CardType with _$CardType {
  @JsonSerializable()
  const factory CardType({
    @HiveField(0) required String image,
    @HiveField(1) required String nameKey,
  }) = _CardType;

  factory CardType.fromJson(Map<String, dynamic> json) =>
      _$$CardTypeImplFromJson(json);
}
