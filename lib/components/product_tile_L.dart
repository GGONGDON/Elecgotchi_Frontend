import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/product.dart';

class ProductTile_L extends StatelessWidget{

  final Product product;
  final double width;

  ProductTile_L({
    super.key,
    required this.product,
    this.width = 300.0,
  });

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: () => Navigator.pushNamed(context, 'info_use_page.dart' ),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(width/25),
          ),
          margin: EdgeInsets.all(width/30),
          padding: EdgeInsets.all(width/12),
          width: width,
          height: width * 3/2,
          child: Column(
            children: [
              // product image
              AspectRatio(
                aspectRatio: 3/4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(width/25)
                  ),
                  padding: EdgeInsets.all(width/12),
                  child: Icon(Icons.favorite),
                ),
              ),

              SizedBox(height: width/20,),

              // product name
              Text(
                product.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: width/15,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ],
          ),
        ),
    );
  }
}