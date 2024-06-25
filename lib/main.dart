import 'package:flutter/material.dart';
import 'package:untitled/pages/Home_page.dart';
import 'package:untitled/pages/fristPage.dart';
import 'package:untitled/pages/secondPage.dart';
import 'package:untitled/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// create actions for GestureDectector
  void userTapped() {
    print("Hello");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: firstPage(),
        routes: {
          '/secondPage': (context) => secondPage(),
          '/Home_page': (context) => Home_page(),
          '/settings_page': (context) => settings_page(),
        });
  }
}
