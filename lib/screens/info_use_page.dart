import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/floating_button.dart';
import 'package:my_first_flutter_project/components/my_text_button.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/models/product.dart';
import 'package:provider/provider.dart';

// 2.2 제품 상세 정보_사용중
class InfoUsePage extends StatefulWidget {
  final Product product;
  final int index;

  const InfoUsePage({Key? key, required this.product, required this.index}) : super(key: key);

  @override
  State<InfoUsePage> createState() => InfoUseState();
}

class InfoUseState extends State<InfoUsePage> {

  @override
  Widget build(BuildContext context) {

    // access in use products
    final products = context.watch<Display>().use;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // 전체화면 색상
      backgroundColor: const Color(0xFFF5F5F5),
      floatingActionButton: const FloatButton(),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        title: const Text(
          'Information',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // product details
          Center(
            child: Column(
              children: <Widget>[
                // product image & name
                ProductTile(
                  product: products[widget.index],
                  width: 300,
                  height: 340,
                  image_ratio: 1,
                  box_size: 15,
                  font_size: 15,
                  onTap: () {},
                ),

                // buttons
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // info button
                      MyTextButton(
                          onTap: (){},
                          text: 'Info',
                          button_color: Color.fromARGB(255, 189, 189, 189),
                          text_color: Colors.white,
                          width: 120,
                          height: 40,
                      ),

                      SizedBox(width: 50),

                      // web button
                      MyTextButton(
                        onTap: (){},
                        text: 'Web',
                        button_color: Color.fromARGB(255, 189, 189, 189),
                        text_color: Colors.black,
                        width: 120,
                        height: 40,
                      ),
                    ],
                  ),
                ),

                // memo text field

                // care&use text
              ],
            ),
          ),
        ],
      )
    );
  }
}