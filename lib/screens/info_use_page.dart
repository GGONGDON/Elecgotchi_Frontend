import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/floating_button.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/models/product.dart';
import 'package:provider/provider.dart';

// 2.2 제품 상세 정보_사용중
class InfoUsePage extends StatefulWidget {
  final Product product;

  const InfoUsePage({super.key, required this.product});

  @override
  State<InfoUsePage> createState() => InfoUseState();
}

class InfoUseState extends State<InfoUsePage> {

  @override
  Widget build(BuildContext context) {

    // access in use products
    final products = context.watch<Display>().use;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: const Color(0xFFF5F5F5),
      floatingActionButton: const FloatButton(),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        title: Text(
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
        children: const [
          // product details
          Center(
            // product image + name

            // info button

            // web button

            // memo text field

            // care&use text

          ),
        ],
      )
    );
  }
}