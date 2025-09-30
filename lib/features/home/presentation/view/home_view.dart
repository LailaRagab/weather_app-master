import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/utiles/assets/fonts.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_widgets/home_app_bar.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_widgets/home_before_get_weather.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_widgets/home_weather_body.dart';

import '../../../../core/shared_widgets/custom_text.dart';
import '../../data/controller/weather_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final WeatherController controller = Get.find<WeatherController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.errorMessage.isNotEmpty) {
            return Center(
                child: CustomText(
                    text: controller.errorMessage.value,
                    style: AppFonts.font26.copyWith(fontSize: 15)));
          } else if (controller.weather.value == null) {
            return const HomeBeforeGetWeather();
          } else {
            return HomeWeatherBody(weatherModel: controller.weather.value!);
          }
        }),
      ),
    );
  }
}
