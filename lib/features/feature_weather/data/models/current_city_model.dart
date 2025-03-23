
import 'package:weather_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';

class CurrentCityModel extends CurrentCityEntity{

  CurrentCityModel(
      {
        final String? cityName,
      final int? statusCode,
      final double? temperature,
      final String? weatherCondition,
      final String? weatherConditionEn,
      final String? icon,
      final int? humidity,
      final double? windSpeed
      }):super(
    cityName:cityName,
    temperature: temperature,
    weatherCondition: weatherCondition,
    statusCode: statusCode,
    weatherConditionEn: weatherConditionEn,
    icon: icon,
    humidity: humidity,
    windSpeed: windSpeed
  );

  factory CurrentCityModel.fromJson(Map<String, dynamic> json) {
    return CurrentCityModel(
      cityName: json['name'],
      statusCode: json['cod'],
      temperature: json['main']['temp'].toDouble(),
      weatherCondition: json['weather'][0]['description'],
      weatherConditionEn: json['weather'][0]['main'],
      icon: json['weather'][0]['icon'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }
}
