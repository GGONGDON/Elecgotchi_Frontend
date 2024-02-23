import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => NavState();
}

class NavState extends State<BottomNav> {
  GlobalKey<CurvedNavigationBarState>_curvednavigationkey=GlobalKey();
  int _intpage = 1;


  @override
  Widget build(BuildContext context) {

    return CurvedNavigationBar(
      key: _curvednavigationkey,
      color: Colors.black.withOpacity(0.8),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.blue,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      index: _intpage, // !
      items: [
        Icon(
          Icons.archive,
          color: Colors.white,
        ),
        Icon(
          Icons.home,
          color: Colors.white,),
        Icon(
          Icons.add_circle_outlined,
          color: Colors.white,),
      ],
      onTap: (index){
        setState(() {
          _intpage = index;
        });
      },
      letIndexChange: (index)=>true,
    );
  }
}