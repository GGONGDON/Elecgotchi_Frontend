import 'package:flutter/material.dart';

// 2.1 제품 등록 페이지
class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => AddState();
}

class AddState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 전체화면 색상
      backgroundColor: Color(0xFFF5F5F5),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add Your Product',
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