import 'package:flutter/material.dart';

class TextField_Log_Button extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const TextField_Log_Button({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        height: 50,
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
          ),
        ),
      ),
    );
  }

  }