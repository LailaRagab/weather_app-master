import 'package:flutter/material.dart';
import 'package:weather_app/core/utiles/fonts.dart';

import '../../../../../../core/utiles/colors.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "WEATHER APP",
      style: AppFonts.font30.copyWith(color: AppColors.primary),
    );
  }
}
