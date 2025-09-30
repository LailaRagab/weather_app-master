import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../../core/utiles/assets/fonts.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
        text: 'WEATHER APP', style: AppFonts.font26.copyWith(fontSize: 30.sp));
  }
}
