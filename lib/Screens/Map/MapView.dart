import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/Map/MapController.dart';
import 'package:vayu/Screens/Map/QualituIndicator/QualityIndiCator.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    var currentLocatiion = LatLng(locationController.position?.latitude ?? 0,
        locationController.position?.longitude ?? 0);

    var mapController = Get.put(MapViewController());
    var tagetLocation = LatLng(0, 0);
    var marker = [];
    return Scaffold(
      body: FlutterMap(
        mapController: mapController.controller.value,
        options: MapOptions(
            onTap: (tapPosition, point) {
              mapController.tapHadler(tapPosition, point);
            },
            center: currentLocatiion,
            zoom: 8),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          Obx(
            () => MarkerLayer(
              markers: [
                Marker(
                  point: currentLocatiion,
                  builder: (context) =>
                      const Icon(Icons.my_location, color: Colors.green),
                ),
                Marker(
                  anchorPos: AnchorPos.align(AnchorAlign.top),
                  rotate: true,
                  height: 100,
                  width: 150,
                  point: mapController.tagetLocation.value,
                  builder: (context) => Card(
                      elevation: 11,
                      color: Colors.transparent,
                      child: QualityIndicator(
                        latitude: mapController.tagetLocation.value.latitude,
                        longitude: mapController.tagetLocation.value.longitude,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            mapController.controller.value.move(currentLocatiion, 10);
          },
          child: Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text("Locate me"),
              ],
            ),
          )),
    );
  }
}
