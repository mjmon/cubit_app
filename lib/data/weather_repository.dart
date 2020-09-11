import 'dart:math';

import 'model/weather.dart';

mixin WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

class FakeWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> fetchWeather(String cityName) {
    //simulate network delay
    return Future.delayed(Duration(seconds: 3), () {
      final random = Random();

      //Simulate Network exception
      if (random.nextBool()) {
        throw NetworkException();
      }

      return Weather(
          cityName: cityName,
          temperatureCelsius: 20 + random.nextInt(15) + random.nextDouble());
    });
  }
}

class NetworkException implements Exception {}
