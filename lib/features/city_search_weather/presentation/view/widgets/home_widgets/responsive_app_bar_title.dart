import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../../core/utiles/assets/responsive_fonts.dart';

class ResponsiveAppBarTitle extends StatelessWidget {
  const ResponsiveAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
        text: 'WEATHER APP',
        style: ResponsiveAppFonts.font26.copyWith(fontSize: 30.sp));
  }
}
