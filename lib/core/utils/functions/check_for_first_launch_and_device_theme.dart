import 'package:flutter/foundation.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> checkForFirstLaunchAndDeviceTheme() async {
  final firstLaunch = await SharedPrefHelper.getBool(CacheKeys.firstLaunch);
  if (firstLaunch == null) {
    isFirstLaunch = true;
    await SharedPrefHelper.setData(CacheKeys.firstLaunch, true);
    _checkTheDeviceTheme();
  } else {
    isFirstLaunch = false;
  }
}

void _checkTheDeviceTheme() {
  final brightness = PlatformDispatcher.instance.platformBrightness;
  isDeviceDarkModeActive = brightness == Brightness.dark ? true : false;
}
