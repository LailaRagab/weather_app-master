import 'package:flutter/material.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/home_app_bar.dart';
import 'package:weather_app/features/city_search_weather/presentation/view/widgets/home_widgets/home_empty_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(appBar: HomeAppBar(), body: HomeEmptyBody()),
    );
  }
}
