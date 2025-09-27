import 'package:flutter/material.dart';

import '../../../../../../core/utiles/fonts.dart';
import '../../../../models/weather_model.dart';

class HomeWeatherBody extends StatelessWidget {
  HomeWeatherBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(weatherModel.cityName, style: AppFonts.font26),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: weatherModel.imageIcon.contains("https:")
                    ? NetworkImage(weatherModel.imageIcon)
                    : NetworkImage("https:${weatherModel.imageIcon}")),
            Text("${weatherModel.avgTemp}", style: AppFonts.font26),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(weatherModel.condition, style: AppFonts.font26),
      ],
    );
  }
}
