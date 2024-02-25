import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/models/display_use.dart';
import 'package:my_first_flutter_project/screens/info_archive_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){

    // access in use products
    final products = context.watch<Display>().use;

    // navigate to selected product details page
    void navigateToProductDetails(int index){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => InfoArchivePage(
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
                height: 500,
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) => ProductTile(
                      product: products[index],
                      onTap: () => navigateToProductDetails(index),
                      width: 300,
                      height: 500,
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