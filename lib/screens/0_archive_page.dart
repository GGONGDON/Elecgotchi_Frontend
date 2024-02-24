import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/product_tile_L.dart';
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

    final products = context.watch<Display>().use;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),

      // body: Container(
      //     color: Colors.black54,
      //     child: ProductTile_L(product: products[1], width: screenWidth * 2/5,)),

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
            Container(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
              color: CupertinoColors.white,
              height: screenHight * 5/7,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: screenWidth * 5/10,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 60.0,
                ),
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  final product = products[index];

                  // return Container(color: Colors.black54,);
                  return ProductTile_L(product: product, width: screenWidth * 2/5,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}