class MainWeather {
  final double temp;
  final double feelsTemp;

  MainWeather({required this.temp, required this.feelsTemp});
  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
      temp: json['temp'],
      feelsTemp: json['feels_like'],
    );
  }
}
