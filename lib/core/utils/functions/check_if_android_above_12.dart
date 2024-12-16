import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> checkIfAndroidAbove12() async {
  final androidInfo = await getIt.get<DeviceInfoPlugin>().androidInfo;
  debugPrint(
      '*#*#*#*#*#* ANDROID VERSION: ${androidInfo.version.release} *#*#*#*#*#*');
  isAndroidAbove12 =
      int.parse(androidInfo.version.release) >= 12 ? true : false;
}
