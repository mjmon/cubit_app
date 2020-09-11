part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded({
    this.weather,
  });
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError({
    this.message,
  });
}
