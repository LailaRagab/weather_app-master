import 'package:flutter/material.dart';
import 'package:weather_app/core/shared_widgets/custom_text.dart';

import '../../../../../../core/utiles/assets/responsive_fonts.dart';

class ResponsiveHomeEmptyBody extends StatelessWidget {
  const ResponsiveHomeEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: CustomText(
                text: "There is no weather start",
                style: ResponsiveAppFonts.font26)),
        CustomText(text: "searching now. 🔍", style: ResponsiveAppFonts.font26)
      ],
    );
  }
}
