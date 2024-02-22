import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/product.dart';

class ProductTile_L extends StatelessWidget{

  final Product product;

  const ProductTile_L({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // product image
          Icon(Icons.favorite),

          // product name
          Text(product.name),

        ],
      ),
    );
  }
}