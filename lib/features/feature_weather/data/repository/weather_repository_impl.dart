import 'package:dio/dio.dart';
import 'package:weather_clean_architecture/core/resources/data_state.dart';
import 'package:weather_clean_architecture/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_clean_architecture/features/feature_weather/data/models/current_city_model.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository{
  ApiProvider apiProvider;
  WeatherRepositoryImpl(this.apiProvider);
  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String city) async {
   try{
     Response response=await apiProvider.callCurrentWeather(city);
     if(response.statusCode==200){
      CurrentCityEntity currentCityEntity= CurrentCityModel.fromJson(response.data);
       return DataSuccess(currentCityEntity);
     }else{
       return DataError("something went wrong please try again...");
     }
   }catch(e){
     return DataError("please check your connection...");
   }

  }

}