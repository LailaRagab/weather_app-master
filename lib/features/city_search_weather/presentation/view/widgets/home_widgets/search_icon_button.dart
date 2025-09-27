import 'package:flutter/material.dart';
import 'package:weather_app/core/utiles/colors.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.search,
      ),
      color: AppColors.primary,
      iconSize: 30,
    );
  }
}
