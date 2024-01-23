// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'WeatherModel_bloc.dart';

import 'package:flutter/material.dart';

@immutable
sealed class WeatherEvent {}

class GetWeatherEvent extends WeatherEvent {}
class LoadingWeatherEvent extends WeatherEvent {}

class LoadedWeatherEvent extends WeatherEvent {
  
}


