import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> getAndCacheCountryCode() async {
  String? cachedCountryCode = await retrieveCachedCountryCode();
  final currentCountryCode = await LocationService.getCountryCode();
  if (cachedCountryCode == null || cachedCountryCode != currentCountryCode) {
    await _cacheCountryCode(currentCountryCode);
    countryCode = currentCountryCode;
  } else {
    countryCode = cachedCountryCode;
  }
}

Future<void> _cacheCountryCode(String newCountryCode) async {
  final box = await Hive.openBox<String>(HiveBoxes.countryCodeBox);
  debugPrint('********* CACHED COUNTRY CODE: $newCountryCode *************');
  await box.put(HiveKeys.countryCode, newCountryCode);
}

Future<String?> retrieveCachedCountryCode() async {
  final box = await Hive.openBox<String>(HiveBoxes.countryCodeBox);
  final cachedCountryCode = box.get(HiveKeys.countryCode);
  debugPrint(
      '********* FETCHED CACHED COUNTRY CODE: $cachedCountryCode *************');
  return cachedCountryCode;
}
