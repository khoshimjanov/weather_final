import 'package:weather_app/features/weather/data/models/condition.dart';
import 'package:weather_app/features/weather/data/models/current_weather.dart';
import 'package:weather_app/features/weather/data/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'weather.freezed.dart'; // Include the associated part file
// part 'weather.g.dart'; // Add this line

// @freezed
// class WeatherModel with _$WeatherModel {
//   factory WeatherModel({
//     required LocationModel locationModel,
//     required CurrentWeatherModel currentWeatherModel,
//   }) = _WeatherModel;

//   factory WeatherModel.fromJson(Map<String, dynamic> json) =>
//       _$WeatherModelFromJson(json);
//   // // Include this line for deserialization
// }

class WeatherModel {
  final LocationModel locationModel;
  final CurrentWeatherModel currentWeatherModel;

  WeatherModel(
      {required this.locationModel, required this.currentWeatherModel});
  factory WeatherModel.initial() {
    return WeatherModel(
        locationModel: LocationModel(
            name: '',
            region: "",
            country: "",
            lat: 0,
            lon: 0,
            tzId: '',
            localtimeEpoch: 0,
            localtime: ""),
        currentWeatherModel: CurrentWeatherModel(
            temperature: 0,
            lastUpdated: "lastUpdated",
            condition: ConditionModel(text: ""),
            isDay: 0,
            windKph: 0,
            humidity: 0,
            cloud: 0));
  }
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final locationModel = LocationModel.fromJson(json['location']);
    final currentWeatherModel = CurrentWeatherModel.fromJson(json['current']);
    return WeatherModel(
        locationModel: locationModel, currentWeatherModel: currentWeatherModel);
  }
  // Include this line for deserialization
}
