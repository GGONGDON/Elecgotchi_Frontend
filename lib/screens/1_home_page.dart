import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:provider/provider.dart';

import 'info_use_page.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // access in use products
    final products = context.watch<Display>().use;

    // navigate to selected product details page
    void navigateToProductDetails(int index){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => InfoUsePage(
              product: products[index],
              index: index,
          ),
          ),
      );
    }

    return Scaffold(
      // 전체화면 색상
      backgroundColor: const Color(0xFFF5F5F5),

        // 상단바
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          leading: Container(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/images/Logo_vectorized_NoBackground.png'),
          ),
        ),

      body: ListView(
          children: [
            // title: Elecgotchi
            const Padding(
              padding: EdgeInsets.all(8.0),
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
              child: Container(
                height: screenHeight * 0.6,
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) => ProductTile(
                      product: products[index],
                      onTap: () => navigateToProductDetails(index),
                      width: 300,
                      image_ratio: 3/4,
                      box_size: 15,
                      font_size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}