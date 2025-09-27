import 'package:flutter/material.dart';
import '../../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../../core/utiles/fonts.dart';

class AppBarTitle extends StatelessWidget {
  AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
        text: 'WEATHER APP', style: AppFonts.font26.copyWith(fontSize: 30));
  }
}
