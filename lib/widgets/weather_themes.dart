import 'package:flutter/material.dart';

class WeatherThemes {
  static final ThemeData sunny = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.yellow[100],
    appBarTheme: const AppBarTheme(backgroundColor: Colors.orange),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.brown)),
  );

  static final ThemeData rainy = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue[100],
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.grey[800])),
  );

  static final ThemeData cloudy = ThemeData(
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.grey[300],
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey[600]),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black87)),
  );

  static final ThemeData snowy = ThemeData(
    primarySwatch: Colors.lightBlue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: Colors.lightBlue[300]),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.blueGrey)),
  );

  static final ThemeData thunderstorm = ThemeData(
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.deepPurple[100],
    appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
  );

  static final ThemeData defaultTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
  );

  static ThemeData getThemeForCondition(String? condition) {
    if (condition == null) return defaultTheme;

    switch (condition.toLowerCase()) {
      case 'sunny':
      case 'clear':
        return sunny;
      case 'partly cloudy':
      case 'cloudy':
      case 'overcast':
        return cloudy;
      case 'mist':
      case 'fog':
      case 'light rain':
      case 'moderate rain':
      case 'heavy rain':
        return rainy;
      case 'patchy snow possible':
      case 'light snow':
      case 'moderate snow':
      case 'heavy snow':
      case 'blizzard':
        return snowy;
      case 'thundery outbreaks possible':
      case 'patchy light rain with thunder':
      case 'moderate or heavy rain with thunder':
        return thunderstorm;
      default:
        return defaultTheme;
    }
  }
}
