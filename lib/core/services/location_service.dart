import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<void> requestPermission() async {
    await Geolocator.requestPermission();
  }

  static Future<bool> isLocationPermissionDenied() async {
    final locationPermission = await Geolocator.checkPermission();
    return locationPermission == LocationPermission.deniedForever ||
        locationPermission == LocationPermission.denied;
  }

  static Future<String> getCountryCode() async {
    Position position = await Geolocator.getCurrentPosition();
    debugPrint('***** LocationService: Getting Country Code *****');
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    debugPrint('***** Country Code: ${placemarks.first.isoCountryCode} *****');
    return placemarks.first.isoCountryCode ?? 'US';
  }
}
