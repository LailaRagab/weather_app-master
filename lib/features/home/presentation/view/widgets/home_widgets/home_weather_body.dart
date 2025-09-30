import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_widgets/weather_icon_and_temp_row.dart';

import '../../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../../core/utiles/assets/fonts.dart';
import '../../../../models/weather_model.dart';

class HomeWeatherBody extends StatelessWidget {
  const HomeWeatherBody({super.key, required this.weatherModel});
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
        SizedBox(
          height: 40.h,
        ),
        WeatherIconAndTempRow(weatherModel: weatherModel),
        SizedBox(
          height: 40.h,
        ),
        CustomText(text: weatherModel.condition, style: AppFonts.font26)
      ],
    );
  }
}
