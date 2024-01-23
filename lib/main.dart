import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/data/data_source/remote.dart';
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
  // @override
  // void initState() {
  //   context.read<WeatherBloc>().add(
  //         GetWeatherEvent(),
  //       );
  // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, data) {
      return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Image.asset(
              Assets.images.mainBackground.path,
              // "/Users/dovudkhonkhoshimjanov/Projects/weather_app/assets/images/main_background.png",
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Container(
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage(Assets.images.mainBackground.path
                  //             // "/Users/dovudkhonkhoshimjanov/Projects/weather_app/assets/images/main_background.png",
                  //             ))),
                  child: Text('${data.weatherModel.locationModel.country}')
                  // Image.asset(
                  //   // "/Users/dovudkhonkhoshimjanov/Projects/weather_app/assets/images/main_background.png",
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
          ],
        ),
      );
    });
  }
}
