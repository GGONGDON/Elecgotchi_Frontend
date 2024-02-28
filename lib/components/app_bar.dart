import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  String text;

  MyAppBar({super.key, required this.text});

 @override
 Widget build(BuildContext context){
   return AppBar(
     backgroundColor: Colors.transparent,
     leading: Container(
       padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
       child: Image.asset('assets/images/Logo_vectorized_NoBackground.png'),
     ),
     title: Text(text,
       style: TextStyle(
         color: Theme.of(context).colorScheme.onPrimary,
         fontSize: 25,
         fontWeight: FontWeight.w600,
       ),
     ),
     centerTitle: false,
   );
 }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}