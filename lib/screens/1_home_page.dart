import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/product_tile_L.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context){

    // access in use products
    final products = context.watch<Display>().use;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),

        // 상단바
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          leading: Container(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/images/Logo_vectorized_NoBackground.png'),
          ),
        ),

      body: Container(
        height: 600,
        child: ListView(
          children: [
            // title: Elecgotchi
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Elecgotchi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // product list
            Center(
              child: SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index){
                    // get each individual product_use
                    final product = products[index];

                    // return as a product tile UI
                    return ProductTile_L(product: product);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}