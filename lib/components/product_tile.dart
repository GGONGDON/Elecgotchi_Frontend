import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/product.dart';

class ProductTile extends StatelessWidget{

  final Product product;
  final double width;
  final void Function()? onTap;

  const ProductTile({
    super.key,
    required this.product,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                padding: const EdgeInsets.all(25),
                child: const Icon(Icons.favorite), // 이미지 대신
              ),

            ),

            const SizedBox(height: 15,),

            // product name
            Text(
              product.name,
              style: const TextStyle(
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