import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';

abstract class LocationService {
  Future<Position> determineCurrentPosition(BuildContext context);
}

class UserPositionService extends LocationService {

  @override
  Future<Position> determineCurrentPosition(BuildContext context) async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (serviceEnabled == false) {
      CustomToast.showToast(
        context: context,
        messageKey: LangKeys.enableLocation,
        state: CustomToastState.warning,
      );
    }
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      CustomToast.showToast(
        context: context,
        messageKey: LangKeys.locationDenied,
        state: CustomToastState.warning,
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<String> getCountryCode(BuildContext context) async {
    Position position = await determineCurrentPosition(context);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks.first.isoCountryCode ?? 'EG';
  }
}
