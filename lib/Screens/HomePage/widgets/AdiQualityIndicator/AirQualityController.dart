import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityModel.dart';
import 'package:vayu/Constants/Constants.dart' as Constants;

class AirQualityIndicatorController extends GetxController {
  Future<AirQuality> getQualityData() async {
    var locationController = Get.put(LocationController());
    var position = await locationController.getLocation();
    var latitude = position?.latitude;
    var longitude = position?.longitude;
    Dio _dio = Dio();
    var response =
        await _dio.get(Constants.currentAirPolutionLink(latitude, longitude));
    // print(response.data);
    var qui = AirQuality.fromJson(response.data);
    return qui;
  }
}
