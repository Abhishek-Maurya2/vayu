class AirQuality {
  List<AQIData>? list;

  AirQuality.fromJson(Map<String, dynamic> json) {
    if (list == null) {
      list = [];
    }
    json["list"].forEach((data) => list!.add(AQIData.fromJson(data)));
    print("-------------------------------");
    print(list![0].AQI);
  }
}

class AQIData {
  int? dt;
  int? AQI;
  int? AQIpercent;
  String? AQIName;
  double? co;
  // double? no;
  double? no2;
  double? o3;
  double? so2;
  double? pm2_5;
  double? pm10;
  double? nh3;
  AQIData.fromJson(Map<String, dynamic> json) {
    dt = json["dt"];
    AQI = json["main"]["aqi"];
    switch (AQI) {
      case 1:
        {
          AQIName = "Great Quality";
        }
        break;
      case 2:
        {
          AQIName = "Fair Quality";
        }
        break;
      case 3:
        {
          AQIName = "Moderate Quality";
        }
        break;
      case 4:
        {
          AQIName = "Poor Quality";
        }
        break;
      case 5:
        {
          AQIName = "Very Poor Quality";
        }
        break;
      default:
        {
          AQIName = "Unknow Quality";
        }
    }
    AQIpercent = (100 - (AQI! / 5) * 100).round();
    var components = json["components"];
    co = components["co"];
    no2 = components["no2"];
    // no = components["no"];
    // no comeing 0 showing null Error Because C Type Null Is USED
    o3 = components["o3"];
    so2 = components["so2"];
    pm2_5 = components["pm2_5"];
    pm10 = components["pm10"];
    nh3 = components["nh3"];
  }
}
