import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/core/widgets/main_wrapper.dart';
import 'package:weather_clean_architecture/features/feature_weather/presentation/bloc/home_bloc.dart';
import 'package:weather_clean_architecture/service_locator.dart';

void main() async {
  await initializeLocator();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_)=> locator<HomeBloc>())
          ],
          child: MainWrapper()),
    );
  }
}
