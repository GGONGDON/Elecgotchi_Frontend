import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/2_add_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => NavState();
}

class NavState extends State<BottomNav> {
  int index = 1;

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
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
    ];

    return CurvedNavigationBar(
      color: Colors.black.withOpacity(0.8),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.blue,
      index: index,
      items: items,
      onTap: (index) {
        setState(() {
          this.index = index;
        });

        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ArchivePage()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage()),
            );
            break;
        }
      },
    );
  }
}
