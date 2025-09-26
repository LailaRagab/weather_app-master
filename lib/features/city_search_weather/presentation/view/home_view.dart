import 'package:flutter/material.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/home_empty_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              )
            ],
            title: const Text(
              "Weather App",
            ),
          ),
          body: HomeEmptyBody()),
    );
  }
}
