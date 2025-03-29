import 'package:weather_clean_architecture/core/resources/data_state.dart';
import 'package:weather_clean_architecture/core/usecase/use_case.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase extends UseCase<DataState<CurrentCityEntity>,String>{
  final WeatherRepository _repository;
  GetCurrentWeatherUseCase(this._repository);

  @override
  Future<DataState<CurrentCityEntity>> call(String param) {
    return _repository.fetchCurrentWeatherData(param);
  }


}