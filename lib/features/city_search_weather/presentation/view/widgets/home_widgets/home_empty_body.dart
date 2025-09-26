import 'package:flutter/material.dart';

class HomeEmptyBody extends StatelessWidget {
  const HomeEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("There is no weather 😔 start" ,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800
          )
          ),
        ),
        Text("Searching now 🔍" , style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800
        ))
      ],
    );
  }
}
