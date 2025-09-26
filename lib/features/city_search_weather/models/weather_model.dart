

class WeatherModel {
  final String cityName;
  final DateTime updateDate;
  final String imageIcon;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;
  final String condition;

  WeatherModel({required this.cityName,
    required this.updateDate,
    required this.imageIcon,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition});

  factory WeatherModel.fromJson(json){
    return WeatherModel(cityName: json['location']['name'],
        updateDate: DateTime.parse(json['current']['last_updated']) ,
        imageIcon:json['current']['condition']['icon'],
        avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        condition: json['current']['condition']['text'] );
  }
}
