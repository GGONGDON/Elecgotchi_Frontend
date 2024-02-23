import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/2_add_page.dart';

class FloatButton extends StatelessWidget{
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context){
    return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,

        overlayColor: Colors.black,
        overlayOpacity: 0.4,

        curve: Curves.bounceIn,

        children: [
          SpeedDialChild(
              child: Icon(Icons.archive, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ArchivePage()));
              }),
          SpeedDialChild(
              child: Icon(Icons.home, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }),
          SpeedDialChild(
              child: Icon(Icons.add_circle_outlined, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
              }),
          SpeedDialChild(
              child: Icon(Icons.arrow_back, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      );
  }
}