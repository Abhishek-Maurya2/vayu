import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';

class MapViewController extends GetxController {
  var controller = MapController().obs;
  var userLocationController = Get.put(LocationController());
  late Rx<LatLng> tagetLocation;

  void tapHadler(var tapPosition, LatLng? point) {
    tagetLocation.value = point ?? LatLng(0, 0);
  }

  @override
  void onInit() {
    tagetLocation = LatLng(userLocationController.position?.latitude ?? 0,
            userLocationController.position?.longitude ?? 0)
        .obs;
    super.onInit();
  }
}
