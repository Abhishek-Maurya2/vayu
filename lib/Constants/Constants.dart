String APIkey = "c44c435bc356663b29668b342e5adc5e";
String currentAirPolutionLink(latitude, longitude) =>
    "http://api.openweathermap.org/data/2.5/air_pollution?lat=${latitude}&lon=${longitude}&appid=${APIkey}";
