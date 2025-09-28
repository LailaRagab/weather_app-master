import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import '../../../../../core/constants/constants.dart';
import '../../../models/weather_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WeatherController extends GetxController {
  String base = 'https://api.weatherapi.com/v1';
  String apiKey = 'a7e7ec4b47894195b95163710242812';
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var weather = Rxn<WeatherModel>();
  var box = Hive.box('weatherBox');

  @override
  void onInit() {
    super.onInit();
    var box = Hive.box('weatherBox');
    String? lastCity = box.get('lastCity');
    if (lastCity != null) {
      getCurrentWeather(cityName: lastCity);
    }
  }

  Future<WeatherModel?> getCurrentWeather({
    required String cityName,
  }) async {
    try {
      isLoading.value = true;
      Response response = await Constants.dio
          .get('$base/forecast.json?key=$apiKey&q=$cityName&days=1');
      if (response.statusCode == 200) {
        isLoading.value = false;
        WeatherModel weatherModel = WeatherModel.fromJson(response.data);
        weather.value = weatherModel;
        box.put('lastCity', cityName);
        return weatherModel;
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        isLoading.value = false;
        errorMessage.value = "No internet connection";
      } else if (e.response?.statusCode == 404) {
        isLoading.value = false;
        errorMessage.value = "City not found";
      } else if (e.response?.statusCode == 500 ||
          e.response?.statusCode == 503) {
        isLoading.value = false;
        errorMessage.value = "Internal server error";
      } else {
        isLoading.value = false;
        errorMessage.value = "Unexpected error occurredd";
      }
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = "Unexpected error occurreddd";
    }
  }
}
