import 'package:flutter/material.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/HomePage/widgets/AirQuality/AirQuality.dart';
import 'package:vayu/Screens/HomePage/widgets/otherInfo/OtherInfo.dart';
import 'package:vayu/Screens/HomePage/widgets/UserLocation.dart';
import 'package:get/get.dart';
import 'package:vayu/Widgets/CustomAppDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomAppDrawer(),
      appBar: AppBar(
        title: Text("वायु",
            style: TextStyle(
              color: Color.fromRGBO(122, 122, 122, 1),
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [UserLocation(), AirQuality(), OtherInfo()],
        ),
      ),
      bottomNavigationBar: Text("HELEO"),
    );
  }
}
