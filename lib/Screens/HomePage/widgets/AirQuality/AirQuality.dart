import 'package:flutter/material.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityIndicator.dart';

class AirQuality extends StatelessWidget {
  const AirQuality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(173, 213, 188, 1.0),
        ),
        BoxShadow(
          color: Colors.white,
          spreadRadius: -12.0,
          blurRadius: 35.0,
        ),
      ], borderRadius: BorderRadius.all(Radius.circular(50000))),
      child: Center(
          child: Material(
        elevation: 11,
        borderRadius: BorderRadius.all(Radius.circular(20000)),
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white,
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: -35.0,
              blurRadius: 35.0,
            ),
          ], borderRadius: BorderRadius.all(Radius.circular(50000))),
          child: Center(child: AirQualityIndicator()),
        ),
      )),
    );
  }
}
