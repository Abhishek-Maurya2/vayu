import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    var currentLocatiion = LatLng(locationController.position?.latitude ?? 0,
        locationController.position?.longitude ?? 0);
    var controller = MapController();
    return FlutterMap(
      mapController: controller,
      options: MapOptions(center: currentLocatiion, zoom: 8),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: currentLocatiion,
              builder: (context) =>
                  Icon(Icons.my_location, color: Colors.purple),
            )
          ],
        )
      ],
    );
  }
}
