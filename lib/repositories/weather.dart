import 'package:new_weather_app/models/weather.dart';

import 'package:http/http.dart' as https;
import 'dart:convert';

class WeatherRepository {
  // final WeatherProvider weatherProvider = WeatherProvider();
  // Future<List<Weather>> getWeatherData() => weatherProvider.getDataWeather();
  Future<Weather> getDataWeather() async {
    Uri url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Istra&units=metric&appid=4f835643d7ff653f90b1686997a64d12');
    var response = await https.get(url);
    if (response.statusCode == 200) {
      final weatherJson = jsonDecode(response.body);
      var body = Weather.fromJson(weatherJson);
      return body;
    } else {
      throw Exception('Error, I can t get Weather, Sorry   :((((');
    }
  }
}
