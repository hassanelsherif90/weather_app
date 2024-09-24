import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '4ff5867f13a4450fb1e73729242209';

  const WeatherService(this.dio);

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
    Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=n');

    WeatherModel weatherModel = WeatherModel.fromjson(response.data);
    return weatherModel;
    } catch (e) {
      return null;
    }
  }
}
