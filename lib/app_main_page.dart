import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/2_add_page.dart';

// 하단바가 있는 페이지
// 기본 페이지
// 홈, 저장소, 추가
class MyAppPage extends StatefulWidget {

  MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => MyAppState();
}

class MyAppState extends State<MyAppPage> {
  // 하단바 index
  int _selectedIndex = 1;

  final List<Widget> _navIndex = [
    const ArchivePage(),
    const HomePage(),
    const AddPage(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _navIndex.elementAt(_selectedIndex),

      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color:Theme.of(context).colorScheme.primary.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Theme.of(context).colorScheme.primary,

        onTap: _onNavTapped,

        items: const [
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