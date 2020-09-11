import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Weather extends Equatable {
  final String cityName;
  final double temperatureCelsius;

  Weather({
    @required this.cityName,
    @required this.temperatureCelsius,
  });

  @override
  List<Object> get props => [cityName, temperatureCelsius];
}
