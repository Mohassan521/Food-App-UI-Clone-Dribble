import 'package:api_testing/details_page.dart';
import 'package:api_testing/eighth_screen.dart';
import 'package:api_testing/fifth_screen.dart';
import 'package:api_testing/firebase_options.dart';
import 'package:api_testing/fourth_screen.dart';
import 'package:api_testing/home.dart';
import 'package:api_testing/second_screen.dart';
import 'package:api_testing/seventh_screen.dart';
import 'package:api_testing/sixth_screen.dart';
import 'package:api_testing/third_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      home: EigthScreen(),
    );
  }
}
