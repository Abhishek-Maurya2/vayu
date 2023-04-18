import 'package:flutter/material.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:get/get.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityController.dart';

class OtherInfo extends StatelessWidget {
  const OtherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var airQualityController = Get.put(AirQualityIndicatorController());
    var CardColor = Color.fromRGBO(255, 255, 255, 0.9);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 15),
            child: Text("Other molecules in nature",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
              height: 250,
              child: FutureBuilder(
                future: airQualityController.getQualityData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                        child: Text("Loading...",
                            style: TextStyle(
                              color: Color.fromRGBO(122, 122, 122, 1),
                            )));
                  }
                  return ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Card(
                              color: CardColor,
                              child: Container(
                                height: 200,
                                width: 150,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "SO",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 24),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(snapshot.data!.list![0].so2
                                            .toString() ??
                                        "loading..."),
                                  ],
                                )),
                              )),
                        ),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nh",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(snapshot.data!.list![0].nh3.toString() ??
                                      "loading..."),
                                ],
                              )),
                            )),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "CO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  Text(snapshot.data!.list![0].co.toString() ??
                                      "loading..."),
                                ],
                              )),
                            )),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "NO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(snapshot.data!.list![0].no2.toString() ??
                                      "loading..."),
                                ],
                              )),
                            )),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "O",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(snapshot.data!.list![0].o3.toString() ??
                                      "loading..."),
                                ],
                              )),
                            )),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "2.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(snapshot.data!.list![0].pm2_5
                                          .toString() ??
                                      "loading..."),
                                ],
                              )),
                            )),
                        Card(
                            color: CardColor,
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            fontSize: 24),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "10",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                      snapshot.data!.list![0].pm10.toString() ??
                                          "μg/m3"),
                                ],
                              )),
                            ))
                      ]);
                },
              ),
            ),
          ),
        ]);
  }
}
