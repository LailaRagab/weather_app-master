import 'package:flutter/material.dart';

import '../../../../../../core/utiles/fonts.dart';
import '../../../../models/weather_model.dart';

class HomeWeatherBody extends StatelessWidget {
  const HomeWeatherBody({super.key, required this.weatherModelThird});

  final WeatherModel weatherModelThird;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(weatherModelThird.cityName, style: AppFonts.weatherDetails),
        Text(
            "update at: ${weatherModelThird.updateDate.hour}:${weatherModelThird.updateDate.minute}",
            style: AppFonts.updateDetails),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: weatherModelThird.imageIcon.contains("https:")
                    ? NetworkImage(weatherModelThird.imageIcon)
                    : NetworkImage("https:${weatherModelThird.imageIcon}")),
            Text("${weatherModelThird.avgTemp}",
                style: AppFonts.weatherDetails),
            Column(
              children: [
                Text(
                  "maxTemp: ${weatherModelThird.maxTemp.round()}",
                  style: AppFonts.tempDetails,
                ),
                Text(
                  "minTemp: ${weatherModelThird.minTemp.round()}",
                  style: AppFonts.tempDetails,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Text(weatherModelThird.condition, style: AppFonts.weatherDetails),
      ],
    );
  }
}
