import 'package:new_weather_app/models/weather.dart';

abstract class HomeScreenState {}

class HomeScreenEmptyState extends HomeScreenState {}

class HomeScreenLoadingState extends HomeScreenState {}

class HomeScreenLoadedState extends HomeScreenState {
  final Weather loadedWeather;

  HomeScreenLoadedState({required this.loadedWeather});
}

class HomeScreenErrorState extends HomeScreenState {}
