import 'package:equatable/equatable.dart';

class CurrentCityEntity extends Equatable{

  final String? cityName;
  final int? statusCode;
  final double? temperature;
  final String? weatherCondition;
  final String? weatherConditionEn;
  final String? icon;
  String? iconUrl;
  final int? humidity;
  final double? windSpeed;


  CurrentCityEntity({this.cityName, this.statusCode, this.temperature,
      this.weatherCondition, this.weatherConditionEn, this.icon, this.iconUrl,
      this.humidity, this.windSpeed});



  @override
  List<Object?> get props => [

  ];

}