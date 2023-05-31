import 'package:flutter/material.dart';
import 'package:ui_test/pages/ejemplo_page.dart';
import 'package:ui_test/pages/home_page.dart';
import 'package:ui_test/pages/login_page.dart';
 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      );
    
  }
}