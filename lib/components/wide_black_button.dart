import 'package:flutter/material.dart';

class WideBlackButton extends StatelessWidget{
  final String text;

  const WideBlackButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context){
    return Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                      text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                  ),
                                ),
                ),
            ),
            )],
        )
    );
  }
}