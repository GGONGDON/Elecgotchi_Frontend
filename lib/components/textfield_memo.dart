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
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth * 0.8,
        height: 200,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        child: TextField(
          controller: controller,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          style: TextStyle(fontSize: 16, color: Colors.black54),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            prefixIcon: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.primary,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      );
  }
}