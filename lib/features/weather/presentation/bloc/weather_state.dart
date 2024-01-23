// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/data/models/status.dart';
import 'package:weather_app/features/weather/data/models/weather/weather.dart';
import 'package:weather_app/features/weather/data/models/weather_status.dart';

// part of 'weather_bloc.dart';

class WeatherState {
  final LoadingStatus dataStatus;
  final WeatherModel weatherModel;
  final Color color;
  final WeatherModelStatus weatherModelStatus;

  WeatherState({
    required this.dataStatus,
    required this.weatherModelStatus,
    required this.weatherModel,
    required this.color,
  });


  WeatherState copyWith({
    LoadingStatus? dataStatus,
    WeatherModel? weatherModel,
    Color? color,
    WeatherModelStatus? weatherModelStatus,
  }) {
    return WeatherState(
      color: color ?? this.color,
      dataStatus: dataStatus ?? this.dataStatus,
      weatherModel: weatherModel ?? this.weatherModel,
      weatherModelStatus: weatherModelStatus ?? this.weatherModelStatus,
    );
  }
 factory WeatherState.initial() {
    return WeatherState(
      color: Colors.transparent,
      dataStatus:LoadingStatus.pure,
      weatherModel: WeatherModel.initial(),
      weatherModelStatus: WeatherModelStatus.unknown,
    );
  }

  // @override
  // String toString() {
  //   return 'TaskState(status: $status, tasklist: $tasklist, upcomingList: $upcomingList, searchedTask: $searchedTask, startDate: $startDate, endDate: $endDate, selectIconcolor: $selectIconcolor, selectIcon: $selectIcon, priorityColor: $priorityColor, isSearching: $isSearching)';
  // }

  // @override
  // bool operator ==(covariant TaskState other) {
  //   if (identical(this, other)) return true;

  //   return other.status == status &&
  //       listEquals(other.tasklist, tasklist) &&
  //       listEquals(other.upcomingList, upcomingList) &&
  //       listEquals(other.searchedTask, searchedTask) &&
  //       other.startDate == startDate &&
  //       other.endDate == endDate &&
  //       other.selectIconcolor == selectIconcolor &&
  //       other.selectIcon == selectIcon &&
  //       other.priorityColor == priorityColor &&
  //       other.isSearching == isSearching;
  // }

  // @override
  // int get hashCode {
  //   return status.hashCode ^
  //       tasklist.hashCode ^
  //       upcomingList.hashCode ^
  //       searchedTask.hashCode ^
  //       startDate.hashCode ^
  //       endDate.hashCode ^
  //       selectIconcolor.hashCode ^
  //       selectIcon.hashCode ^
  //       priorityColor.hashCode ^
  //       isSearching.hashCode;
  // }
}
