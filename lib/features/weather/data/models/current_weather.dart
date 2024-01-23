import 'package:weather_app/features/weather/data/models/condition.dart';

class CurrentWeatherModel {
  final String lastUpdated;
  final ConditionModel condition;
  final int isDay;
  final double temperature;
  final double windKph;
  final int humidity;
  final int cloud;

  CurrentWeatherModel(
      {required this.lastUpdated,
      required this.condition,
      required this.temperature,
      required this.isDay,
      required this.windKph,
      required this.humidity,
      required this.cloud});
  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    final condition = ConditionModel.fromJson(json['condition']);
    return CurrentWeatherModel(
      lastUpdated: json['last_updated'],
      condition: condition,
      temperature: json['temp_c'],
      isDay: json['is_day'],
      windKph: json['wind_kph'],
      humidity: json['humidity'],
      cloud: json['cloud'],
    );
  }
}
