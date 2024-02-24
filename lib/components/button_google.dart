import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget{
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 45,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1.50),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/images/7dff82097a22ce080aa49aa3352fd7a2.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.cover
                    ),
                  ), // Google 아이콘 이미지
                  const SizedBox(width: 20,), // 아이콘과 텍스트 사이의 간격
                  const Center(
                    child: Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}