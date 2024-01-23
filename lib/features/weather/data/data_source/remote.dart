import 'package:dio/dio.dart';
import 'package:weather_app/assets/constants/api.dart';
import 'package:weather_app/core/exception/exception.dart';
import 'package:weather_app/features/weather/data/models/weather/weather.dart';

abstract class TaskRemoteDataSource {
  Future<WeatherModel> getWeather();

  factory TaskRemoteDataSource() => _TaskRemoteDataSourceImpl();
}

class _TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  @override
  Future<WeatherModel> getWeather() async {
    try {
      final dio = Dio();
      Response response = await dio.get(weatherApi);
      return WeatherModel.fromJson(response.data);

      // final collection =
      // await FirebaseFirestore.instance.collection('tasks').get();

      // final tasks = collection.docs
      //     .map((item) => WeatherModel.fromJson(item.data(), item.id))
      //     .toList();

    } catch (error) {
      print(error);
      throw ServerException(message: 'Xatolik yuz berdi!', code: 500);
    }
  }
}
