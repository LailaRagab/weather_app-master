import 'package:flutter/material.dart';
import 'package:weather_app/core/utiles/colors.dart';

import '../../../view_model/weather_api/api_request.dart';

class SearchIconButton extends StatelessWidget {
  SearchIconButton({super.key, required this.cityName});
  ApiRequest apiRequest = ApiRequest();
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        apiRequest.getCurrentWeather(cityName: cityName, context: context);
      },
      icon: Icon(
        Icons.search,
      ),
      color: AppColors.primary,
      iconSize: 30,
    );
  }
}
