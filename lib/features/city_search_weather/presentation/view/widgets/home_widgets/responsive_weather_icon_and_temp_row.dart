import 'package:flutter/material.dart';

import '../../../../../../core/utiles/assets/responsive_fonts.dart';
import '../../../../models/weather_model.dart';

class ResponsiveWeatherIconAndTempRow extends StatelessWidget {
  const ResponsiveWeatherIconAndTempRow(
      {super.key, required this.weatherModel});
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
        Text("${weatherModel.avgTemp}", style: ResponsiveAppFonts.font26),
      ],
    );
  }
}
