import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// 2.1 제품 등록 페이지
class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => AddState();
}

class AddState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add Your Product',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  /**
                   * URL 입력박스
                   */
                  const SizedBox(height: 45.0,),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    padding: const EdgeInsets.fromLTRB(12, 20, 5, 5),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("URL",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),),
                        const SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color: Colors.grey,
                                      inset: true,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  // controller: _textController,
                                  decoration: InputDecoration(
                                    labelText: 'URL을 입력하세요',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            IconButton(
                              iconSize: 50.0,
                              icon: const Icon(Icons.arrow_circle_right),
                              onPressed: () { print("onPressed!"); },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}