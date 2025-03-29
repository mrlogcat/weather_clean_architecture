part of 'home_bloc.dart';


class HomeState{
  CwStatus cwStatus;
  HomeState({required this.cwStatus});

  HomeState copyWith({CwStatus? cwStatus}){
    return HomeState(cwStatus: cwStatus?? this.cwStatus);
  }
}

