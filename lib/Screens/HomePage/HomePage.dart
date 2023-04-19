import 'package:flutter/material.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/HomePage/Home/HomeView.dart';
import 'package:vayu/Screens/HomePage/widgets/AirQuality/AirQuality.dart';
import 'package:vayu/Screens/HomePage/widgets/otherInfo/OtherInfo.dart';
import 'package:vayu/Screens/HomePage/widgets/UserLocation.dart';
import 'package:get/get.dart';
import 'package:vayu/Screens/Map/MapView.dart';
import 'package:vayu/Screens/Search/SearchPage.dart';
import 'package:vayu/Screens/Setting/SettingsView.dart';
import 'package:vayu/Widgets/CustomAppDrawer.dart';
import 'package:vayu/Widgets/CustomBottomBar/BottomBarCOntroller.dart';
import 'package:vayu/Widgets/CustomBottomBar/CustomBottomBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    var bottomBarController = Get.put(BottomBarController());
    List<Widget> screens = [
      HomeView(),
      MapView(),
      SettingsView(),
    ];
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
            IconButton(
                onPressed: () {
                  Get.to(SearchPage());
                },
                icon: Icon(Icons.search_outlined))
          ],
        ),
        body: Obx(() => screens[bottomBarController.pageLocation.value]),
        bottomNavigationBar: CustomBottomBar());
  }
}
