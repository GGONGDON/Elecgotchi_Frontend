import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/floating_button.dart';
import 'package:my_first_flutter_project/components/info_bottom_sheet.dart';
import 'package:my_first_flutter_project/components/use_info_box.dart';
import 'package:my_first_flutter_project/components/my_text_button.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/components/textfield_memo.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/models/product.dart';
import 'package:provider/provider.dart';

// 2.2 제품 상세 정보_사용중
class InfoUsePage extends StatefulWidget {
  final Product product;
  final int index;

  InfoUsePage({Key? key, required this.product, required this.index}) : super(key: key);

  @override
  State<InfoUsePage> createState() => InfoUseState();
}

class InfoUseState extends State<InfoUsePage> {
  // text editing controller
  final memoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // access in use products
    final products = context.watch<Display>().use;

    return Scaffold(
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
                  width: screenWidth * 0.8,
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
                          onTap: (){
                            InfoBottomSheet(context,
                                ['Registration Date: ${products[widget.index].date}',
                                  'Certification: ${products[widget.index].certification}',
                                  'Country of Origin: ${products[widget.index].origin}',
                                  'Manufacturer: ${products[widget.index].manufacturer}',
                                  'Contact Number: ${products[widget.index].num}'],
                                'Close Bottom Sheet');
                          },
                          text: 'Info',
                          button_color: Color.fromARGB(255, 189, 189, 189),
                          text_color: Colors.black,
                          width: screenWidth * 0.35,
                          height: 40,
                      ),

                      SizedBox(width: 30),

                      // web button
                      MyTextButton(
                        onTap: (){},
                        text: 'Web',
                        button_color: Color.fromARGB(255, 189, 189, 189),
                        text_color: Colors.black,
                        width: screenWidth * 0.35,
                        height: 40,
                      ),
                    ],
                  ),
                ),

                // memo text field
                TextField_Memo_Button(
                    controller: memoController,
                    hintText: 'Leave a Memo :)',
                    obscureText: false,
                ),

                // care&use text
                TextBox(
                  instruction: '1. Clean the drip tray, drip base, and capsule container daily.'
                      'Also, remove the water tank and lid, wash them with odorless neutral detergent, and then rinse with lukewarm/hot water.\n\n'
                      '2. Remove moisture using a clean towel, dishcloth, or paper towel, then reinstall all parts. '
                      'Clean the inside of the machine, including the coffee outlet and capsule container/drip base, with a clean, damp towel. \n',
                ),

              ],
            ),
          ),
        ],
      )
    );
  }
}