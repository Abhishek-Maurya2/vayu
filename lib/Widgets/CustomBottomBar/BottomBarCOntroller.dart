import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var pageLocation = 0.obs;
  void jumpTo(int value) {
    pageLocation.value = value;
  }
}
