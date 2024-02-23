import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
              child: Icon(Icons.delete, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ArchivePage()));
              }),
          SpeedDialChild(
              child: Icon(Icons.archive_outlined, color: Colors.black),
              shape: CircleBorder(),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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