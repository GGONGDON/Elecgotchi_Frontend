class Product {
  final String name;
  final String imagePath;

  Product({
    required this.name,
    required this.imagePath,
});

  String get _name => name;
  String get _imagePath => imagePath;
}