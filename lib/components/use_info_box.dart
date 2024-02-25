import 'package:flutter/material.dart';

class TextBox extends StatelessWidget{
  final String instruction;

  const TextBox({super.key, required this.instruction});
  
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: 300,
        height: 300,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Care & Use',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(height: 10),

              Text(instruction,
                //textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}