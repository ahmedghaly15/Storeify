import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';

part 'payment_card_details.g.dart';

@HiveType(typeId: HiveTypeIds.payParams)
@JsonSerializable(explicitToJson: true)
class PaymentCardDetails {
  @HiveField(0)
  final String? number;
  @HiveField(1)
  final String? cvv;
  @HiveField(2)
  final String? amount;
  @HiveField(3)
  @JsonKey(name: 'exp_month')
  final String? expMonth;
  @HiveField(4)
  @JsonKey(name: 'exp_year')
  final String? expYear;
  @HiveField(5)
  final CardType? cardType;
  @HiveField(6)
  final int? holderNumber;

  PaymentCardDetails({
    this.number,
    this.cvv,
    this.amount,
    this.expMonth,
    this.expYear,
    this.cardType,
    this.holderNumber,
  });

  factory PaymentCardDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentCardDetailsToJson(this);
}
