import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/responsive_search_icon_button.dart';
import '../../../../../../core/utiles/assets/colors.dart';
import '../../../../../../core/utiles/assets/responsive_fonts.dart';

class ResponsiveAppBarTextfield extends StatefulWidget {
  ResponsiveAppBarTextfield({super.key, required this.formKey});
  final GlobalKey formKey;
  TextEditingController editController = TextEditingController();
  @override
  State<ResponsiveAppBarTextfield> createState() =>
      _ResponsiveAppBarTextfieldState();

  TextEditingController get editControllerget {
    return editController;
  }
}

class _ResponsiveAppBarTextfieldState extends State<ResponsiveAppBarTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a valid city name";
        } else if (value.contains(RegExp(r'[0-9]'))) {
          return "Please enter a valid city name";
        } else if (value.contains(RegExp(r'[!@#\$&*~-]'))) {
          return "Please enter a valid city name";
        }
        return null;
      },
      controller: widget.editController,
      style: TextStyle(color: AppColors.primary),
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
          hintText: "Search city name",
          iconColor: AppColors.primary,
          hintStyle: ResponsiveAppFonts.font26.copyWith(fontSize: 14.sp),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: AppColors.grey,
          suffixIcon: ResponsiveSearchIconButton(
              controller: widget.editController, formKey: widget.formKey)),
    );
  }
}
