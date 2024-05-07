import 'package:api_testing/details_page.dart';
import 'package:api_testing/fifth_screen.dart';
import 'package:api_testing/fourth_screen.dart';
import 'package:api_testing/home.dart';
import 'package:api_testing/second_screen.dart';
import 'package:api_testing/seventh_screen.dart';
import 'package:api_testing/sixth_screen.dart';
import 'package:api_testing/third_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: SeventhScreen(),
    );
  }
}
