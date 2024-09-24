import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

// ignore: camel_case_types
class WeatherinitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {}
