import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/2_add_page.dart';

// 기본 홈
// 하단바가 있는 페이지
class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => AppState();
}

class AppState extends State<AppPage> {
  // 하단바 index
  int _selectedIndex = 1;

  final List<Widget> _navIndex = [
    ArchivePage(),
    HomePage(),
    AddPage(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _navIndex.elementAt(_selectedIndex),

      // 하단바
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        color: Colors.black.withOpacity(0.800000011920929),
        backgroundColor: Color(0xFFF5F5F5),
        buttonBackgroundColor: Colors.blue,

        onTap: _onNavTapped,

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
      ),
    );
  }
}