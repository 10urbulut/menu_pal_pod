import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:menu_pal/app/app_objects.dart';

abstract interface class ILocationService {
  Future<Location?> getCurrentLocation();
  Future<bool?> checkPermission();
  Future<bool?> requestPermission();
}

@lazySingleton
class LocationService implements ILocationService {
  final ILocationService _locationService = GeoLocatorService();
  @override
  Future<Location?> getCurrentLocation() async {
    bool? hasPermission = await checkPermission();
    bool? permissionGranted;
    if (hasPermission == false) {
      permissionGranted = await requestPermission();
    }

    if (permissionGranted == false) {
      return null;
    }

    return await _locationService.getCurrentLocation();
  }

  @override
  Future<bool?> checkPermission() async {
    debugPrint('LocationService.checkPermission');
    return await _locationService.checkPermission();
  }

  @override
  Future<bool?> requestPermission() async {
    debugPrint('LocationService.requestPermission');
    return await _locationService.requestPermission();
  }
}

class GeoLocatorService implements ILocationService {
  @override
  Future<Location?> getCurrentLocation() async {
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
      return Location(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  @override
  Future<bool?> checkPermission() async {
    bool isEnabled = await Geolocator.isLocationServiceEnabled();

    if (isEnabled == false) {
      debugPrint('LocationService is not enabled');
      return false;
    }
    LocationPermission permission;
    try {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }

      if (permission == LocationPermission.always) {
        return true;
      }

      if (permission == LocationPermission.whileInUse) {
        return true;
      }

      if (permission == LocationPermission.deniedForever) {
        return false;
      }

      if (permission == LocationPermission.unableToDetermine) {
        return false;
      }
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }

    return false;
  }

  @override
  Future<bool?> requestPermission() async {
    LocationPermission permission;

    try {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }

      if (permission == LocationPermission.always) {
        return true;
      }

      if (permission == LocationPermission.whileInUse) {
        return true;
      }

      if (permission == LocationPermission.deniedForever) {
        return false;
      }

      if (permission == LocationPermission.unableToDetermine) {
        return false;
      }
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }

    return false;
  }
}
