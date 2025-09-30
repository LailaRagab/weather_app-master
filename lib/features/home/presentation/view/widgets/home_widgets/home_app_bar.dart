import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_app_bar_textfield.dart';
import 'home_app_bar_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({
    super.key,
  });
  @override
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Form(
        key: formKey,
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
            height: 30.h,
          ),
          const HomeAppBarTitle(),
          SizedBox(
            height: 20.h,
          ),
          HomeAppBarTextfield(
            formKey: formKey,
          ),
        ]),
      ),
      toolbarHeight: 130.h,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(130.h);
}
