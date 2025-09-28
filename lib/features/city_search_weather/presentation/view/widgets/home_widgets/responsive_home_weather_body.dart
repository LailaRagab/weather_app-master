import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/responsive_weather_icon_and_temp_row.dart';

import '../../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../../core/utiles/assets/responsive_fonts.dart';
import '../../../../models/weather_model.dart';

class ResponsiveHomeWeatherBody extends StatelessWidget {
  const ResponsiveHomeWeatherBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: weatherModel.cityName,
          style: ResponsiveAppFonts.font26,
        ),
        SizedBox(
          height: 40.h,
        ),
        ResponsiveWeatherIconAndTempRow(weatherModel: weatherModel),
        SizedBox(
          height: 40.h,
        ),
        CustomText(
            text: weatherModel.condition, style: ResponsiveAppFonts.font26)
      ],
    );
  }
}
