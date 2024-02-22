import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/models/display.dart';
import 'package:my_first_flutter_project/screens/0_archive_page.dart';
import 'package:my_first_flutter_project/screens/1_home_page.dart';
import 'package:my_first_flutter_project/screens/app_page.dart';
import 'package:my_first_flutter_project/screens/info_use_page.dart';
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
        '/app_page.dart':(context) => const AppPage(),
        '/1_home_page.dart': (context) => HomePage(),
        '/2_add_page.dart': (context) => AppPage(),
        '/0_archive_page.dart': (context) => ArchivePage(),
        'info_use_page.dart': (context) => InfoUsePage(),
      },
    );
  }
}