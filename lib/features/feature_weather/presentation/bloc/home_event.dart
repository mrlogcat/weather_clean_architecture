part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoadCurrentWeatherEvent extends HomeEvent{
  final String cityName;

  LoadCurrentWeatherEvent(this.cityName);
}


