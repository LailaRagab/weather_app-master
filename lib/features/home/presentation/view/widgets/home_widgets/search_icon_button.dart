import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../core/utiles/assets/colors.dart';
import '../../../../data/controller/weather_controller.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton(
      {super.key, required this.controller, required this.formKey});
  final TextEditingController controller;
  final formKey;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Get.find<WeatherController>()
              .getCurrentWeather(cityName: controller.text);
        }
      },
      icon: const Icon(Icons.search),
      color: AppColors.primary,
      iconSize: 30.sp,
    );
  }
}
