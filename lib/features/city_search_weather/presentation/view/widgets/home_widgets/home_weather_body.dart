import 'package:flutter/material.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/weather_icon_and_temp_row.dart';

import '../../../../../../core/shared_widgets/custom_text.dart';
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
        CustomText(
          text: weatherModel.cityName,
          style: AppFonts.font26,
        ),
        const SizedBox(
          height: 40,
        ),
        WeatherIconAndTempRow(weatherModel: weatherModel),
        const SizedBox(
          height: 40,
        ),
        CustomText(text: weatherModel.condition, style: AppFonts.font26)
      ],
    );
  }
}
