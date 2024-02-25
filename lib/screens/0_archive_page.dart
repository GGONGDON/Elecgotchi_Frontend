import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/models/display.dart';
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
    final products = context.watch<Display>().use;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Archive',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Expanded(
                child:Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  color: Colors.transparent,
                  height: screenHight,
                  child: GridView.count(
                      crossAxisCount: 2,
                      //mainAxisSpacing: 10,
                      //crossAxisSpacing: 10,
                      childAspectRatio: 3/4,
                      children: List.generate(
                          products.length,
                              (index){
                            return ProductTile(
                              product: products[index],
                              onTap: (){},
                              width: screenWidth,
                              height: screenHight,
                              image_ratio: 1,
                              box_size: 0,
                              font_size: 15,
                            );
                          }
                      )
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}