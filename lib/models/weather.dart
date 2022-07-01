class Weather {
  final dynamic temperature;
  final String main;
  final String description;

  Weather(
      {required this.description,
      required this.main,
      required this.temperature});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['main']['temp'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
    );
  }
}
