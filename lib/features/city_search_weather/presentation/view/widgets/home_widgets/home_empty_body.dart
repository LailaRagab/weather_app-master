import 'package:flutter/material.dart';
import 'package:weather_app/core/shared_widgets/custom_text.dart';

import '../../../../../../core/utiles/fonts.dart';

class HomeEmptyBody extends StatelessWidget {
  HomeEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: CustomText(
                text: "There is no weather start", style: AppFonts.font26)),
        CustomText(text: "searching now. 🔍", style: AppFonts.font26)
      ],
    );
  }
}
