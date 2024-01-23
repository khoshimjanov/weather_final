import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/assets/constants/functions.dart';
import 'package:weather_app/features/weather/data/data_source/remote.dart';
import 'package:weather_app/features/weather/data/models/status.dart';
import 'package:weather_app/features/weather/data/repository/weather.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_event.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';
import 'package:weather_app/gen/assets.gen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => WeatherBloc(
            response:
                WeatherRepository(taskRemoteDataSource: TaskRemoteDataSource()))
          ..add(GetWeatherEvent()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, data) {
      if (data.dataStatus == LoadingStatus.loading) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Image.asset(
                Assets.images.mainBackground.path,
                // "/Users/dovudkhonkhoshimjanov/Projects/weather_app/assets/images/main_background.png",
                fit: BoxFit.cover,
              ),
              const SafeArea(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        );
      } else if (data.dataStatus == LoadingStatus.loadedWithFailure) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Image.asset(
                Assets.images.mainBackground.path,
                fit: BoxFit.cover,
              ),
              const SafeArea(
                child: Center(
                  child: Text('Sorry, something went wrong'),
                ),
              ),
            ],
          ),
        );
      }

      return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: [
            Image.asset(
              Assets.images.mainBackground.path,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: ShowWeather(
                weather: data,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ShowWeather extends StatelessWidget {
  final WeatherState weather;
  const ShowWeather({
    required this.weather,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final weatherIcon = getIcon(weather.weatherModelStatus);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        height: 500,
        width: 200,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: weather.color),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(weatherIcon),
                  Text(
                    weather.weatherModel.currentWeatherModel.temperature
                        .toString(),
                    style: countryTextstyle,
                  ),
                ],
              ),
              Text(
                weather.weatherModel.locationModel.localtime,
                style: countryTextstyle,
              ),
              Text(
                weather.weatherModel.currentWeatherModel.condition.text,
                style: countryTextstyle,
              ),
              Text(
                '${weather.weatherModel.locationModel.name},${weather.weatherModel.locationModel.country}',
                style: countryTextstyle,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wind speed',
                          style: simpleTextstyle,
                        ),
                        Text(
                          "${weather.weatherModel.currentWeatherModel.windKph} km/h",
                          style: simpleTextstyle,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Humidity',
                          style: simpleTextstyle,
                        ),
                        Text(
                          "${weather.weatherModel.currentWeatherModel.humidity}",
                          style: simpleTextstyle,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cloud',
                          style: simpleTextstyle,
                        ),
                        Text(
                          "${weather.weatherModel.currentWeatherModel.cloud}",
                          style: simpleTextstyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                weatherIcon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

final simpleTextstyle = TextStyle(color: Colors.white);
final countryTextstyle = TextStyle(color: Colors.white, fontSize: 16);
