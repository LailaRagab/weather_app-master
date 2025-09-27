import 'package:flutter/material.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/search_icon_button.dart';

import 'app_bar_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        SearchIconButton(),
      ],
      title: const AppBarTitle(),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
