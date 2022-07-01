import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/screens/home/bloc/home_screen_cubit.dart';
import 'package:new_weather_app/screens/home/bloc/home_screen_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is HomeScreenEmptyState) {
          context.read<HomeScreenCubit>().fetchWeather();
        } else if (state is HomeScreenErrorState) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.blue,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[Text('Что-то пошло не так!')],
                ),
              ),
            ),
          );
        } else if (state is HomeScreenLoadedState) {
          return SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff47B5FF), Color(0xff1363DF)])),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // SizedBox(
                        //   height: 40,
                        //   width: size.width,
                        //   child: TextField(
                        //     onChanged: (value) {},
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 106),
                          child: Text(
                            '${state.loadedWeather.temperature.toStringAsFixed(0)}\u00B0',
                            style: const TextStyle(
                              fontFamily: 'inter',
                              fontSize: 105,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 39),
                          child: Text(
                            state.loadedWeather.main,
                            style: const TextStyle(
                              fontFamily: 'inter',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            state.loadedWeather.description,
                            style: const TextStyle(
                              fontFamily: 'inter',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff47B5FF),
                  Color(0xff1363DF),
                ],
              ),
            ),
            child: const Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
