import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_widgets/search_icon_button.dart';
import '../../../../../../core/utiles/assets/colors.dart';
import '../../../../../../core/utiles/assets/fonts.dart';

class HomeAppBarTextfield extends StatefulWidget {
  HomeAppBarTextfield({super.key, required this.formKey});
  final GlobalKey formKey;
  TextEditingController editController = TextEditingController();
  @override
  State<HomeAppBarTextfield> createState() => _HomeAppBarTextfieldState();

  TextEditingController get editControllerget {
    return editController;
  }
}

class _HomeAppBarTextfieldState extends State<HomeAppBarTextfield> {
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
          hintStyle: AppFonts.font26.copyWith(fontSize: 14.sp),
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
          suffixIcon: SearchIconButton(
              controller: widget.editController, formKey: widget.formKey)),
    );
  }
}
