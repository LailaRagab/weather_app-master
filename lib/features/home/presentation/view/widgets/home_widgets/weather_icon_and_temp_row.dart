import 'package:flutter/material.dart';
import '../../../../../../core/utiles/assets/fonts.dart';
import '../../../../models/weather_model.dart';

class WeatherIconAndTempRow extends StatelessWidget {
  const WeatherIconAndTempRow({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
            image: weatherModel.imageIcon.contains("https:")
                ? NetworkImage(weatherModel.imageIcon)
                : NetworkImage("https:${weatherModel.imageIcon}")),
        Text("${weatherModel.avgTemp}", style: AppFonts.font26),
      ],
    );
  }
}
