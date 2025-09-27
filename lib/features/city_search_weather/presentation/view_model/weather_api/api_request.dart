import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helpers/display_snack_bar.dart';
import '../../../models/weather_model.dart';

class ApiRequest {
  String base = 'https://api.weatherapi.com/v1';
  String apiKey = 'a7e7ec4b47894195b95163710242812';

  Future<WeatherModel> getCurrentWeather(
      {required String cityName, required BuildContext context}) async {
    try {
      Response response = await Constants.dio
          .get('$base/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        snackBar(context, "No internet connection");
      } else if (e.response?.statusCode == 404) {
        snackBar(context, "City not found");
      } else if (e.response?.statusCode == 500 ||
          e.response?.statusCode == 503) {
        snackBar(context, "Server error, please try again later");
      } else {
        snackBar(context, "Unexpected Dio error: ${e.message}");
      }
    } catch (e) {
      snackBar(context, "Unexpected error occurred");
    }
    throw Exception("Unexpected error occurred");
  }
}
