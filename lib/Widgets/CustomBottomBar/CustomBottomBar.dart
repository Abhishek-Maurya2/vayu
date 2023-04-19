import 'package:flutter/material.dart';
import 'package:vayu/Widgets/CustomBottomBar/BottomBarCOntroller.dart';
import 'package:get/get.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(permanent: true, BottomBarController());
    return BottomAppBar(
        elevation: 11,
        child: Container(
            height: 50,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => (controller.pageLocation.value == 0)
                      ? IconButton(
                          onPressed: () {
                            controller.jumpTo(0);
                          },
                          icon: Icon(
                            Icons.home,
                          ))
                      : IconButton(
                          onPressed: () {
                            controller.jumpTo(0);
                          },
                          icon: Icon(
                            Icons.home_outlined,
                          )),
                ),
                Obx(() => (controller.pageLocation.value == 1)
                    ? IconButton(
                        onPressed: () {
                          controller.jumpTo(1);
                        },
                        icon: Icon(Icons.map))
                    : IconButton(
                        onPressed: () {
                          controller.jumpTo(1);
                        },
                        icon: Icon(Icons.map_outlined))),
                Obx(
                  () => (controller.pageLocation.value == 2)
                      ? IconButton(
                          onPressed: () {
                            controller.jumpTo(2);
                          },
                          icon: Icon(Icons.settings))
                      : IconButton(
                          onPressed: () {
                            controller.jumpTo(2);
                          },
                          icon: Icon(Icons.settings_outlined)),
                ),
              ],
            ))));
  }
}
