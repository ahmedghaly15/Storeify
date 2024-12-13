import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:store_ify/core/utils/functions/get_and_cache_country_code.dart';

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
    try {
      return await _currentCountryCode();
    } catch (error) {
      return _handleGetCountryCodeErrors(error);
    }
  }

  static Future<String> _currentCountryCode() async {
    Position position = await Geolocator.getCurrentPosition();
    debugPrint('***** LocationService: Getting Country Code *****');
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    debugPrint('***** Country Code: ${placemarks.first.isoCountryCode} *****');
    return placemarks.first.isoCountryCode ?? 'EG';
  }

  static Future<String> _handleGetCountryCodeErrors(Object error) async {
    final cachedCountryCode = await retrieveCachedCountryCode();
    if (error is PlatformException && error.code == 'IO_ERROR') {
      debugPrint(
          '*** Geocoding service unavailable. Defaulting to $cachedCountryCode. ***');
    } else {
      debugPrint('******* Error retrieving country code: $error *******');
    }

    // Return a default value
    return cachedCountryCode ?? 'US';
  }
}
