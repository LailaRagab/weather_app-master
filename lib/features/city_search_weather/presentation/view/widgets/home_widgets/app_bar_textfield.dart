import 'package:flutter/material.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/search_icon_button.dart';

import '../../../../../../core/utiles/colors.dart';
import '../../../../../../core/utiles/fonts.dart';

class AppBarTextfield extends StatefulWidget {
  AppBarTextfield({super.key});

  @override
  State<AppBarTextfield> createState() => _AppBarTextfieldState();
}

class _AppBarTextfieldState extends State<AppBarTextfield> {
  TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editController,
      style: TextStyle(color: AppColors.primary),
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        hintText: "Search city name",
        iconColor: AppColors.primary,
        hintStyle: AppFonts.font14.copyWith(color: AppColors.primary),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.grey,
        suffixIcon: SearchIconButton(
          cityName: editController.text,
        ),
      ),
    );
  }
}
