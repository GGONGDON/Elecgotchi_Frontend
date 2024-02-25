class Product {
  final String name;
  final String imagePath;
  //date
  final DateTime date;
  //certification
  final String certification;
  //origin
  final String origin;
  //manufacturer
  final String manufacturer;
  //num
  final String num;

  Product({
    required this.name,
    required this.imagePath,
    required this.date,
    required this.certification,
    required this.origin,
    required this.manufacturer,
    required this.num,
});

  String get _name => name;
  String get _imagePath => imagePath;
  DateTime get _date => date;
  String get _certification => certification;
  String get _origin => origin;
  String get _manufacturer => manufacturer;
  String get _num => num;
}