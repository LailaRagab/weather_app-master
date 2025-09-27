import 'package:flutter/material.dart';

import '../../../../../../core/utiles/fonts.dart';

class HomeEmptyBody extends StatelessWidget {
  const HomeEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "There is no weather 😔 start",
            style: AppFonts.font26,
          ),
        ),
        Text("Searching now 🔍", style: AppFonts.font26)
      ],
    );
  }
}
