import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/widgets/weather_themes.dart';

import 'cubits/get_weather_cubit/get_weather_cubit.dart';
import 'cubits/get_weather_cubit/get_weather_state.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: WeatherThemes.getThemeForCondition(context
                                  .read<GetWeatherCubit>()
                                  .weatherModel
                                  ?.weatherCondition),
            home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}


MaterialColor getThemeColor(String? condition) {
  condition = condition?.toLowerCase();

  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case 'sunny':
    case 'clear':
      return Colors.orange;
    case 'partly cloudy':
      return Colors.lightBlue;
    case 'cloudy':
    case 'overcast':
      return Colors.grey;
    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.blueGrey;
    case 'patchy rain possible':
    case 'light rain':
    case 'moderate rain':
      return Colors.blue;
    case 'heavy rain':
    case 'torrential rain shower':
      return Colors.indigo;
    case 'patchy snow possible':
    case 'light snow':
    case 'moderate snow':
    case 'heavy snow':
    case 'blizzard':
      return Colors.lightBlue;
    case 'thundery outbreaks possible':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'heaColor.fromARGB(255, 64, 64, 64) drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.teal;
    default:
      return Colors.blue; // Default color for unknown conditions
  }
}
