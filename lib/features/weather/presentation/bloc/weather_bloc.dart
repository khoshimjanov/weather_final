import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:weather_app/assets/constants/functions.dart';
import 'package:weather_app/features/weather/data/models/status.dart';
import 'package:weather_app/features/weather/data/models/weather/weather.dart';
import 'package:weather_app/features/weather/data/repository/weather.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';

import 'weather_event.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _response;
  WeatherBloc({required WeatherRepository response})
      : _response = response,
        super(WeatherState.initial()) {
    GetWeatherEvent();
    on<GetWeatherEvent>((event, emit) async {
      emit(state.copyWith(dataStatus: LoadingStatus.loading));
      try {
        WeatherModel weather = await _response.getWeather();
        final weatherType = getWeatherType(
          weather.currentWeatherModel.cloud,
          weather.currentWeatherModel.temperature,
        );
        final color = getColor(weatherType);
        emit(
          state.copyWith(
              weatherModel: weather,
              weatherModelStatus: weatherType,
              color: color,
              dataStatus: LoadingStatus.loadedWithSuccess),
        );
      } catch (e) {
        print('Error occured: $e');
        addError(e);
        emit(state.copyWith(dataStatus: LoadingStatus.loadedWithFailure));
      }
    });
  }
}
