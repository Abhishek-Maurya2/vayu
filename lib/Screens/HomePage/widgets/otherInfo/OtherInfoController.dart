import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vayu/Constants/Constants.dart' as Constants;
import 'package:vayu/Controllers/LocationController/LocationController.dart';
import 'package:vayu/Screens/HomePage/widgets/AdiQualityIndicator/AirQualityModel.dart';

class OtherInfoController extends GetxController {
  Future<AirQuality> getQualityData(double latitude, double longitude) async {
    Dio _dio = Dio();
    var response =
        await _dio.get(Constants.currentAirPolutionLink(latitude, longitude));
// print(response.data);
    var qui = AirQuality.fromJson(response.data);
    return qui;
  }
}
