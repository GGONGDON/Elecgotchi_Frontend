import 'package:flutter/material.dart';

class TextField_Memo_Button extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const TextField_Memo_Button({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
    Widget build(BuildContext context){
    return Container(
        width: 300,
        height: 200,
        decoration: ShapeDecoration(
          /*
          gradient: LinearGradient(
            colors: [Color(0xFFD9D9D9), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp,
          ),
           */
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        child: TextField(
          controller: controller,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          style: TextStyle(fontSize: 15, color: Colors.black54),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            prefixIcon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black54),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 189, 189, 189)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      );
  }
}