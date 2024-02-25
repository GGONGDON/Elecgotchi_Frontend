import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget{
  final void Function()? onTap;
  final String text;
  final Color button_color;
  final Color text_color;
  final double width;
  final double height;

  const MyTextButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.button_color,
    required this.text_color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
        child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: button_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: onTap,
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          color: text_color,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )],
            )
        ),
    );

  }
}