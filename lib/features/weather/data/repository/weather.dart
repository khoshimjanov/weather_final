
import 'package:weather_app/features/weather/data/data_source/remote.dart';
import 'package:weather_app/features/weather/data/models/weather/weather.dart';

class WeatherRepository {
  final TaskRemoteDataSource taskRemoteDataSource;

  WeatherRepository({required this.taskRemoteDataSource});
  Future<WeatherModel> getWeather() async {
    
    return await taskRemoteDataSource.getWeather();

  }
}
