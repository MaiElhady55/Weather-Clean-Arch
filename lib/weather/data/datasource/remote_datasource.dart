import 'package:dio/dio.dart';
import 'package:weather_clean_arch/core/utills/constances.dart';
import 'package:weather_clean_arch/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName({required String cityName});
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName({required String cityName}) async {
    try {
      Response response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
