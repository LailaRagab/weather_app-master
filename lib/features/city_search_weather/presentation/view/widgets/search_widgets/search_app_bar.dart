import 'package:flutter/material.dart';

import '../../../../../../core/utiles/colors.dart';

AppBar buildSearchAppBar() {
  return AppBar(
    backgroundColor: AppColors.primary,
    title: Text(
      "Search a City",
      style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
    ),
  );
}
