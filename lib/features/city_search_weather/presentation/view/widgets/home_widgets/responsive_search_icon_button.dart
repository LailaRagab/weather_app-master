import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../core/utiles/assets/colors.dart';
import '../../../view_model/weather_api_service/api_request.dart';

class ResponsiveSearchIconButton extends StatelessWidget {
  const ResponsiveSearchIconButton(
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
