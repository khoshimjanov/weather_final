import 'package:flutter/material.dart';
import 'package:weather_app/assets/constants/colors.dart';
import 'package:weather_app/features/weather/data/models/weather_status.dart';
import 'package:weather_app/gen/assets.gen.dart';

WeatherModelStatus getWeatherType(int weatherType, double temperature) {
  if (weatherType <= 100 || weatherType >= 55) {
    return WeatherModelStatus.rainy;
  } else if (weatherType <= 55 || weatherType >= 40) {
    return WeatherModelStatus.sunnny;
  } else if (weatherType <= 5 || weatherType >= 40) {
    return WeatherModelStatus.sunnny;
  } else {
    return WeatherModelStatus.sunnny;
  }
  // switch (weatherType) {
  //   case :
  //     return WeatherModelStatus.sunnny;
  //   case "Cloudy":
  //     return WeatherModelStatus.cloudy;
  //   case "Snowy":
  //     return WeatherModelStatus.snowy;
  //   case weatherType==100:
  //     return WeatherModelStatus.rainy;
  //   default:
  //     return WeatherModelStatus.unknown;
  // }
}

Color getColor(WeatherModelStatus weatherType) {
  switch (weatherType) {
    case WeatherModelStatus.sunnny:
      return sunnyWeatherColor;
    case WeatherModelStatus.cloudy:
      return cloudyWeatherColor;
    case WeatherModelStatus.snowy:
      return snowyWeatherColor;
    case WeatherModelStatus.rainy:
      return rainyWeatherColor;
    default:
      return Colors.transparent;
  }
}

String getIcon(WeatherModelStatus weatherType) {
  switch (weatherType) {
    case WeatherModelStatus.sunnny:
      return Assets.icons.weather.sun;
    case WeatherModelStatus.cloudy:
      return Assets.icons.weather.cloud;
    case WeatherModelStatus.snowy:
      return Assets.icons.weather.cloud;
    case WeatherModelStatus.rainy:
      return Assets.icons.weather.rain;
    default:
      return Assets.icons.weather.cloud;
  }
}
