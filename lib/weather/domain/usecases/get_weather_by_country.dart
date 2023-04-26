import 'package:weather_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_clean_arch/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountry {
  final BaseWeatherReository reository;

  GetWeatherByCountry(this.reository);

  Future<Weather> execute({required String cityName}) async {
    return await reository.getWeatherByCityName(cityName: cityName);
  }
}
