import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_first_flutter_project/components/floating_button.dart';

// 2.2 제품 상세 정보_사용중
class InfoUsePage extends StatefulWidget {
  const InfoUsePage({super.key});

  @override
  State<InfoUsePage> createState() => InfoUseState();
}

class InfoUseState extends State<InfoUsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatButton(),

      body: ListView(
        children: [
          // title: Information
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // product card
          Center(
          ),
        ],
      )
    );
  }
}