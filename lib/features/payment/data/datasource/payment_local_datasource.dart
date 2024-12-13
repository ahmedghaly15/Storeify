import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';

class PaymentLocalDatasource {
  PaymentLocalDatasource._();

  static Future<void> cacheCardDetails(PaymentCardDetails payParams) async {
    final box =
        await Hive.openLazyBox<PaymentCardDetails>(HiveBoxes.paymentBox);
    debugPrint('********** CACHED PAYMENT CARD DETAILS **********');
    await box.put(HiveKeys.cardDetails, payParams);
  }

  static Future<PaymentCardDetails?> retrieveCachedCardDetails() async {
    final box =
        await Hive.openLazyBox<PaymentCardDetails>(HiveBoxes.paymentBox);
    debugPrint('******** RETRIEVED CACHED PAYMENT CARD DETAILS ***********');
    return box.get(HiveKeys.cardDetails);
  }

  static Future<void> deleteCachedCardDetails() async {
    final box =
        await Hive.openLazyBox<PaymentCardDetails>(HiveBoxes.paymentBox);
    debugPrint('********* DELETED CACHED PAYMENT CARD DETAILS *********');
    await box.delete(HiveKeys.cardDetails);
  }
}
