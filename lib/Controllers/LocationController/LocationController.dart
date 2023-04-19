import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  Position? position;
  List<Placemark?>? addresses;
  Future<bool> askLocationPermision() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.showSnackbar(GetSnackBar(
        duration: Duration(seconds: 2),
        message: "Please enable location service",
        title: "servide Enabled : $serviceEnabled",
        backgroundColor: Colors.pink,
      ));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      Get.showSnackbar(GetSnackBar(
        duration: Duration(seconds: 2),
        message: "Please enable location service",
        title: "permisions : ${permission.toString()}",
        backgroundColor: Colors.pink,
      ));
      return false;
    }
    return true;
  }

  Future<Placemark?> getAddressByLatLong(
      double latitude, double longitude) async {
    List<Placemark> places =
        await placemarkFromCoordinates(latitude, longitude);
    return places[0];
  }

  Future<Position?> getLocation() async {
    var locationPermission = await askLocationPermision();
    if (!locationPermission) return null;
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
    return position;
  }

  Future<Placemark?> getAddress() async {
    var location = await getLocation();
    if (location == null) return null;
    List<Placemark> places =
        await placemarkFromCoordinates(location.latitude, location.longitude);
    addresses = places;
    return places[0];
  }

  @override
  void onInit() {
    askLocationPermision();
    super.onInit();
  }
}
