import 'package:weather_clean_architecture/core/resources/data_state.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';

abstract class WeatherRepository{

  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String city);

}