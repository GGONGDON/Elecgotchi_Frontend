import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget{
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black.withOpacity(0.800000011920929),
        backgroundColor: Color(0xFFF5F5F5),
        buttonBackgroundColor: Colors.blue,

        onTap: (index){
          print (index);
        },

        items: [
          Icon(
              Icons.archive,
            color: Colors.white,
          ),
          Icon(
              Icons.home,
          color: Colors.white,),
          Icon(
              Icons.add,
          color: Colors.white,),
        ],
      ),

    );
  }
}