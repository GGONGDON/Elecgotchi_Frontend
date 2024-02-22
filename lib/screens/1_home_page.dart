import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context){

    // access products in shop
    final products = context.watch<Display>().use;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              // 페이지 제목
              child: Text(
                'Elecgotchi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],

            ),
        ),

      );
  }
}