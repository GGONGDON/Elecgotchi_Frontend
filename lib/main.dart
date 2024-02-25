import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/app_main_page.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/2_add_page.dart';
import 'package:provider/provider.dart';
import 'screens/login_page.dart';

void main(){
  runApp(
      ChangeNotifierProvider(
        create: (context) => Display(),
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/login_page.dart': (context) => LoginPage(),
        '/app_main_page.dart': (context) => const MyAppPage(),
        '/1_home_page.dart': (context) => const HomePage(),
        '/2_add_page.dart': (context) => const AddPage(),
        '/0_archive_page.dart': (context) => const ArchivePage(),
      },
    );
  }
}