import 'package:dio/dio.dart';

import '../../../models/weather_model.dart';

class ApiRequest {
  final Dio dio;
  String base = 'https://api.weatherapi.com/v1';
  String apiKey = 'a7e7ec4b47894195b95163710242812';
  ApiRequest({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$base/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
      // handling errors from dio request
    } on DioException catch (e) {
      final String badResponse =
          e.response?.data['error']['message'] ?? "oops there 's an error !";
      return throw Exception(badResponse);
    }
    // handling errors from other reasons
    catch (e) {
      throw Exception("oops there 's an error !");
    }
  }
}
