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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // 전체화면 색상
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Add Your Product',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            /**
             * URL 입력란
             */
            const SizedBox(height: 10.0,),
            Container(
              padding: const EdgeInsets.all(16.0),
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("URL",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     offset: Offset(0, 10),
                            //     blurRadius: 4.0,
                            //
                            //   ),
                            //   BoxShadow(
                            //       color: Colors.grey,
                            //       offset: Offset(0, 10),
                            //       blurRadius: 4.0
                            //   ),
                            // ]
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
                      const SizedBox(width: 16.0),
                      IconButton(
                        // iconSize: ,
                          icon: const Icon(Icons.arrow_circle_right),
                          onPressed: () {print("onPressed!");},
                      ),
                    ],
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