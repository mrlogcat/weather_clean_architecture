

import 'package:get_it/get_it.dart';
import 'package:weather_clean_architecture/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_clean_architecture/features/feature_weather/data/repository/weather_repository_impl.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/use_cases/get_current_weather_use_case.dart';
import 'package:weather_clean_architecture/features/feature_weather/presentation/bloc/home_bloc.dart';

GetIt locator= GetIt.instance;
initializeLocator(){
locator.registerSingleton<ApiProvider>(ApiProvider());
///repo
locator.registerSingleton<WeatherRepositoryImpl>(WeatherRepositoryImpl(locator()));
locator.registerSingleton<GetCurrentWeatherUseCase>(GetCurrentWeatherUseCase(locator()));
///bloc
locator.registerSingleton<HomeBloc>(HomeBloc(locator()));

}