import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/app_bar.dart';
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
      backgroundColor: Colors.transparent,
      appBar: MyAppBar(text: 'Elecgotchi'),

      body: ListView(
          children: [
            // buttons

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
                      width: screenWidth * 0.9,
                      image_ratio: 1,
                      box_size: screenHeight * 0.05,
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