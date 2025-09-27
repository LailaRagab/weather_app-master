import 'package:dio/dio.dart';
import '../../../../../core/constants/constants.dart';
import '../../../models/weather_model.dart';

class ApiRequest {
  String base = 'https://api.weatherapi.com/v1';
  String apiKey = 'a7e7ec4b47894195b95163710242812';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await Constants.dio
          .get('$base/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String badResponse =
          e.response?.data['error']['message'] ?? "oops there 's an error !";
      return throw Exception(badResponse);
    } catch (e) {
      throw Exception("oops there 's an error !");
    }
  }
}
