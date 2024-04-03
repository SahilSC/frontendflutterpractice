import 'package:flutter/material.dart';
import 'package:flutterprac/pages/CityCircleFrontPage.dart';
import 'package:flutterprac/pages/practicePage.dart';


final ThemeData myTheme = ThemeData(
  primaryColor: Color(0xFF19747E),
  fontFamily: "Urbanist",

  // Add more theme configurations as needed
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const practicePage(),
    );
  }
}

