import 'package:flutter/material.dart';
import 'package:vayu/Screens/HomePage/widgets/AirQuality/AirQuality.dart';
import 'package:vayu/Screens/HomePage/widgets/UserLocation.dart';
import 'package:vayu/Screens/HomePage/widgets/otherInfo/OtherInfo.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [UserLocation(), AirQuality(), OtherInfo()],
          ),
          Center(child: Text("Tips To Reduce Pollution"))
        ]);
  }
}
