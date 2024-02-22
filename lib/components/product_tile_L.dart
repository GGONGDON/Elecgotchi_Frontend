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
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'info_use_page.dart' ),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(25),
          width: 300,
          child: Column(
            children: [
              // product image
              AspectRatio(
                aspectRatio: 3/4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),

                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: Icon(Icons.favorite),
                ),

              ),

              const SizedBox(height: 15,),

              // product name
              Text(
                product.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ],
          ),
        ),
    );
  }
}