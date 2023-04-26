import 'package:weather_clean_arch/weather/data/datasource/remote_datasource.dart';
import 'package:weather_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_clean_arch/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherReository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName({required String cityName}) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName: cityName))!;
  }
}
