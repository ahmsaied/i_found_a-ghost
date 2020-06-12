import 'dart:async';
import 'package:location/location.dart';

class UserCurrentLocation {
  static double userLongitude;
  static double userLatitude;

  static void getCurrentUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    location.onLocationChanged.listen((LocationData _locationData) {
      // print(_locationData);
      // Use current location
      userLatitude = _locationData.latitude;
      userLongitude = _locationData.longitude;
    });
  }
}
