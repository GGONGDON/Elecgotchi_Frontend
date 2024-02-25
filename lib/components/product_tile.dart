import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/product.dart';

class ProductTile extends StatelessWidget{

  final Product product;
  final double width;
  final double height;
  final double image_ratio;
  final double box_size;
  final double font_size;
  final void Function()? onTap;

  const ProductTile({
    super.key,
    required this.product,
    required this.width,
    required this.height,
    required this.image_ratio,
    required this. box_size,
    required this. font_size,
    required this.onTap,

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
        width: width,
        height: height,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(25),

        child: Column(
          children: [
            // product image
            AspectRatio(
              aspectRatio: image_ratio,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12)
                ),

                width: double.infinity,
                padding: const EdgeInsets.all(25),
                child: Image.asset(product.imagePath), // 이미지 대신
              ),

            ),

            SizedBox(height: box_size),

            // product name
            Text(
              product.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: font_size,
                fontWeight: FontWeight.w700,
              ),
            ),

          ],
        ),
      ),
    );
  }
}