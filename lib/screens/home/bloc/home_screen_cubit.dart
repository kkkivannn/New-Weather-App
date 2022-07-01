import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/models/weather.dart';
import 'package:new_weather_app/repositories/weather.dart';
import 'package:new_weather_app/screens/home/bloc/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final WeatherRepository _weatherRepository;
  HomeScreenCubit({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(HomeScreenEmptyState());

  Future<void> fetchWeather() async {
    try {
      emit(HomeScreenLoadingState());
      final Weather loadedWeatherList =
          await _weatherRepository.getDataWeather();
      emit(HomeScreenLoadedState(loadedWeather: loadedWeatherList));
    } catch (_) {
      emit(HomeScreenErrorState());
      throw Exception();
    }
  }
}
