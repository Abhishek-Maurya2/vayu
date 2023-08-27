import 'package:flutter/material.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityController.dart';
import 'package:vayu/Screens/Map/QualituIndicator/ClipDrawer.dart';
import 'package:get/get.dart';

class QualityIndicator extends StatelessWidget {
  double latitude;
  double longitude;
  QualityIndicator({Key? key, required this.longitude, required this.latitude})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    var location = locationController.getAddressByLatLong(latitude, longitude);
    var aqiController = Get.put(AirQualityIndicatorController());
    var aqi = aqiController.getQualityDataByLatLong(latitude, longitude);
    return ClipPath(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Container(
              // height: 10,
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FutureBuilder(
                          future: location,
                          builder: (context, snapshot) => (snapshot.hasData)
                              ? Text(
                                  "${snapshot.data?.locality}",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                )
                              : Text("loading...")),
                    ),
                    FutureBuilder(
                      future: aqi,
                      builder: (context, snapshot) => (snapshot.hasData)
                          ? Text(
                              " AQI : ${snapshot.data!.list![0].AQIName.toString()}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          : Text("loading..."),
                    )
                  ],
                )),
              )),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      clipper: CustomClipPath(),
    );
  }
}
