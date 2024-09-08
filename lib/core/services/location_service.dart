import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<void> requestPermission() async {
    debugPrint('***** LocationService: Checking Location Permission *****');
    final locationPermission = await Geolocator.checkPermission();
    debugPrint('LocationService : Location Permission: $locationPermission');
    if (locationPermission == LocationPermission.deniedForever ||
        locationPermission == LocationPermission.denied) {
      debugPrint('LocationService : requestPermission called');
      final permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        debugPrint('LocationService : LocationService denied');
      } else if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        debugPrint('LocationService : LocationService granted');
      }
    }
  }

  static Future<Position> _determineCurrentPosition() async {
    await requestPermission();
    return await Geolocator.getCurrentPosition();
  }

  static Future<String> getCountryCode() async {
    Position position = await _determineCurrentPosition();
    debugPrint('***** LocationService: Getting Country Code *****');
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    debugPrint('***** Country Code: ${placemarks.first.isoCountryCode} *****');
    return placemarks.first.isoCountryCode ?? 'US';
  }
}
