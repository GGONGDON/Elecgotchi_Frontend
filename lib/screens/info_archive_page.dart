import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_project/components/archive_info_box.dart';
import 'package:my_first_flutter_project/components/floating_button.dart';
import 'package:my_first_flutter_project/components/info_bottom_sheet.dart';
import 'package:my_first_flutter_project/components/my_text_button.dart';
import 'package:my_first_flutter_project/components/product_tile.dart';
import 'package:my_first_flutter_project/components/textfield_memo.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/models/product.dart';
import 'package:provider/provider.dart';

// 2.2 제품 상세 정보_저장소
class InfoArchivePage extends StatefulWidget {
  final Product product;
  final int index;

  InfoArchivePage({Key? key, required this.product, required this.index}) : super(key: key);

  @override
  State<InfoArchivePage> createState() => InfoArchiveState();
}

class InfoArchiveState extends State<InfoArchivePage> {
  // text editing controller
  final memoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // access in use products
    final products = context.watch<Display>().archive;

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
                    onTap: (){}
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
                          button_color: Theme.of(context).colorScheme.secondary,
                          text_color: Colors.black,
                          width: screenWidth * 0.35,
                          height: 40,
                        ),

                        SizedBox(width: 30),

                        // web button
                        MyTextButton(
                          onTap: (){},
                          text: 'Web',
                          button_color:Theme.of(context).colorScheme.secondary,
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

                  // Disposal Guidance text
                  // Disposal Guidance text
                  TextBox_2(
                    instruct_up: 'Booking a collection (Circular Governance_Free collection service for government-operated waste appliances): \n'
                        'https://www.15990903.or.kr/portal/main/main.do \n\n'
                        'LG Electronics Resource Circulation Program: Chilseo Recycling Center (CRC) \n\n'
                        'The Rehabilitation Process of Waste Home Appliance: \n'
                        'https://youtu.be/HpMjZ0CGLl4?si=-IJvlAXpOEMwzwT8 \n',

                    instruct_dis: 'When you bought a new product: \n'
                        'If you purchase a new product at a LG Electronics product store, we will process the existing product free of charge when delivering the new product. \n\n'
                        'When you throw away the product you were using: \n'
                        'When discarding home appliances, you should contact the competent administrative welfare center or the waste home appliance discharge reservation system to dispose of them. \n',
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}