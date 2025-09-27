import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/home_view.dart';
import 'features/city_search_weather/presentation/view_model/weather_api_service/api_request.dart';

void main() {
  Get.put(WeatherController());
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
