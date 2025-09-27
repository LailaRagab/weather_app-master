import 'package:flutter/material.dart';
import '../../../../core/utiles/colors.dart';
import '../view_model/weather_api/api_request.dart';

class Search extends StatelessWidget {
  Search({super.key});
  ApiRequest obj = ApiRequest();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onSubmitted: (value) async {
              obj.getCurrentWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
              label: Text(
                "Search",
                style: TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.bold),
              ),
              hintText: "Enter City Name",
              suffixIcon: const Icon(Icons.search),
              border: const OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary)),
            ),
          ),
        ),
      ),
    );
  }
}
// global var
// WeatherModel ?weatherModel;
