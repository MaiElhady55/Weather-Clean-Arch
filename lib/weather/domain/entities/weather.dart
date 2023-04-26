class Weather {
  final int id;
  final String name;
  final String main;
  final String description;
  final int pressure;
  final double tempMin;
  final double tempMax;

  Weather(
      {required this.id,
      required this.name,
      required this.main,
      required this.description,
      required this.pressure,
      required this.tempMin,
      required this.tempMax});
}
