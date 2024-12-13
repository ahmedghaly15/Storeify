import 'package:flutter/foundation.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> checkForFirstLaunchAndDeviceTheme() async {
  final firstLaunch =
      await SharedPrefHelper.getBool(SharedPrefKeys.firstLaunch);
  if (firstLaunch == null) {
    await SharedPrefHelper.setData(SharedPrefKeys.firstLaunch, true);
    _checkTheDeviceTheme();
  }
}

void _checkTheDeviceTheme() {
  final brightness = PlatformDispatcher.instance.platformBrightness;
  isDeviceDarkModeActive = brightness == Brightness.dark ? true : false;
}
