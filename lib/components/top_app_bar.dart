import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({super.key});

 @override
 Widget build(BuildContext context){
   return AppBar(
     toolbarHeight: 100,
     backgroundColor: Colors.grey[100],
       leading: Container(
         padding: const EdgeInsets.all(10),
         child: Image.asset('assets/images/Logo_vectorized_NoBackground.png'),
         ),
   );
 }
}