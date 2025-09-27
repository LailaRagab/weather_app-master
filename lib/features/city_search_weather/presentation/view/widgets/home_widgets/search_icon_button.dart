import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utiles/colors.dart';
import '../../../view_model/weather_api_service/api_request.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.find<WeatherController>()
            .getCurrentWeather(cityName: controller.text);
      },
      icon: const Icon(Icons.search),
      color: AppColors.primary,
      iconSize: 30,
    );
  }
}
