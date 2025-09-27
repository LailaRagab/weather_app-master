import 'package:flutter/material.dart';
import 'app_bar_textfield.dart';
import 'app_bar_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(mainAxisSize: MainAxisSize.max, children: [
        AppBarTitle(),
        SizedBox(
          height: 10,
        ),
        AppBarTextfield(),
      ]),
      toolbarHeight: 130,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(130);
}
