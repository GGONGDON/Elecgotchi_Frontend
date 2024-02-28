import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/app_bar.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/screens/info_archive_page.dart';
import 'package:provider/provider.dart';

// 2.3 저장소 페이지
class ArchivePage extends StatefulWidget {
  const ArchivePage({super.key});

  @override
  State<ArchivePage> createState() => ArchiveState();
}

class ArchiveState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {

    // access in use products
    final products = context.watch<Display>().archive;
    double screenWidth = MediaQuery.of(context).size.width;

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
      backgroundColor: Colors.transparent,
      appBar: MyAppBar(text: 'Archive'),

      body: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 3/4,
                      children: List.generate(
                          products.length,
                              (index){
                            return ProductTile(
                              product: products[index],
                              onTap: () => navigateToProductDetails(index),
                              width: screenWidth,
                              image_ratio: 1,
                              box_size: 0,
                              font_size: 15,
                            );
                          }
                      )
                  ),
    );
  }
}