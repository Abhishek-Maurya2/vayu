import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityController.dart';

class AirQualityIndicator extends StatelessWidget {
  const AirQualityIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AirQualityIndicatorController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Air Quality",
            style: TextStyle(
                color: Color.fromRGBO(122, 122, 122, 1),
                fontWeight: FontWeight.w900,
                fontSize: 32)),
        SizedBox(
          height: 20,
        ),
        FutureBuilder(
          future: controller.getQualityData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Text("loading...");
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "${snapshot.data?.list?[0].AQIpercent.toString()}%" ??
                        "null rec",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 200, 0, 1),
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(snapshot.data?.list?[0].AQIName ?? "UNKNOWN ERR",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 200, 0, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ))
              ],
            );
          },
        )
      ],
    );
  }
}
