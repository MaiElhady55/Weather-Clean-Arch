import 'package:weather_clean_arch/weather/domain/entities/weather.dart';

abstract class BaseWeatherReository {
  Future<Weather> getWeatherByCityName({required String cityName});
}
