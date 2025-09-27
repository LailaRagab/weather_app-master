class WeatherModel {
  final String cityName;
  final String imageIcon;
  final double avgTemp;
  final String condition;

  WeatherModel(
      {required this.cityName,
      required this.imageIcon,
      required this.avgTemp,
      required this.condition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        imageIcon: json['current']['condition']['icon'],
        avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        condition: json['current']['condition']['text']);
  }
}
