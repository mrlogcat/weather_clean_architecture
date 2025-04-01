import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/features/feature_weather/presentation/bloc/cw_status.dart';
import 'package:weather_clean_architecture/features/feature_weather/presentation/bloc/home_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(LoadCurrentWeatherEvent("Tehran"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<HomeBloc,HomeState>(
          builder: (context,state){
            if(state.cwStatus is CwLoading){
             return Text("loading");
            }
            if(state.cwStatus is CwCompleted){
              return Text("completed");
            }
            if(state.cwStatus is CwError ){
              return Text("error");
            }

            return Offstage();
          },
        ),
      ),
    );
  }
}

