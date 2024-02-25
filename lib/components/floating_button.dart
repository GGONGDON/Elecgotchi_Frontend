import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatButton extends StatelessWidget{
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context){
    return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,

        overlayColor: Colors.black,
        overlayOpacity: 0.4,

        curve: Curves.bounceIn,

        children: [
          SpeedDialChild(
              label: 'delete',
              child: const Icon(Icons.delete_forever, color: Colors.black),
              shape: const CircleBorder(),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ArchivePage()));
              }),
          SpeedDialChild(
              label: 'memo',
              child: const Icon(Icons.library_books, color: Colors.black),
              shape: const CircleBorder(),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }),
          SpeedDialChild(
              label: 'archive',
              child: const Icon(Icons.archive_outlined, color: Colors.black),
              shape: const CircleBorder(),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }),
          /*
          SpeedDialChild(
              child: const Icon(Icons.arrow_back, color: Colors.black),
              shape: const CircleBorder(),
              onTap: () {
                Navigator.pop(context);
              }),

           */
        ],
      );
  }
}