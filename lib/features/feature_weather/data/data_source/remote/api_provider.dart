import 'package:dio/dio.dart';
import 'package:weather_clean_architecture/core/utils/constants.dart';

class ApiProvider{
  final Dio _dio=Dio();
  final String _apiKey=Constants.apiKey;


  final String _path = '/data/2.5/weather';

  ///current weather api
  Future<dynamic> callCurrentWeather(String cityName) async {
      var response= await _dio.get(Constants.baseUrl+_path,
        queryParameters: {'q':cityName,'appid':_apiKey,'units':'metric'}
      );
      return response;
  }

  // Future<WeatherModel> getWeather(String city) async {
  //   var url = Uri.https(_baseUrl, _path,
  //       {'q': city, 'appid': _apiKey, 'units': 'metric', 'lang': 'fa'});

}