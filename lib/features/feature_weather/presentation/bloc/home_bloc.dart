
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/core/resources/data_state.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_clean_architecture/features/feature_weather/domain/use_cases/get_current_weather_use_case.dart';
import 'package:weather_clean_architecture/features/feature_weather/presentation/bloc/cw_status.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  HomeBloc(this.getCurrentWeatherUseCase) : super(HomeState(cwStatus: CwLoading())) {
    on<LoadCurrentWeatherEvent>((event, emit) async {
        emit(state.copyWith(cwStatus: CwLoading()));
        
        DataState<CurrentCityEntity> dataState= await getCurrentWeatherUseCase.call(event.cityName);
        if(dataState is DataSuccess){
          emit(state.copyWith(cwStatus: CwCompleted(dataState.data!)));
        }
        if(dataState is DataError){
          emit(state.copyWith(cwStatus: CwError(dataState.error!)));
        }

    });
  }
}
