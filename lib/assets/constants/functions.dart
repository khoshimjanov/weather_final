import 'package:weather_app/features/weather/data/models/weather_status.dart';

WeatherModelStatus getWeatherType(String weatherType) {
  switch (weatherType) {
    case "Sunny":
      return WeatherModelStatus.sunnny;
    case "Cloudy":
      return WeatherModelStatus.cloudy;
    case "Snowy":
      return WeatherModelStatus.snowy;
    case "Rainy":
      return WeatherModelStatus.rainy;
    default:
      return WeatherModelStatus.unknown;
  }
}
