import 'package:flutter/material.dart';

class WideButton extends StatelessWidget{
  final void Function()? onTap;
  final String text;
  final Color button_color;
  final double width;
  final double height;

  const WideButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.button_color,
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
                        style: const TextStyle(
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
        ),
    );

  }
}