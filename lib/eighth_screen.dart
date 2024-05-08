import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class EigthScreen extends StatefulWidget {
  const EigthScreen({super.key});

  @override
  State<EigthScreen> createState() => _EigthScreenState();
}

class _EigthScreenState extends State<EigthScreen> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Stream<QuerySnapshot<Map<String, dynamic>>> notificationStream =
  //     FirebaseFirestore.instance.collection("items").snapshots();

  // // notificationStream.listen((event) {});

  // // Optional: Set background message handler
  // void showNotifications(QueryDocumentSnapshot<Map<String, dynamic>> event) {
  //   const AndroidNotificationDetails notificationDetails =
  //       AndroidNotificationDetails("001", "Local Notification",
  //           channelDescription: "To send local notification");

  //   const NotificationDetails details =
  //       NotificationDetails(android: notificationDetails);

  //   FlutterLocalNotificationsPlugin()
  //       .show(01, event.get("title"), event.get("Description"), details);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings, macOS: null, linux: null);

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {},
    );
  }

  showNotification() {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails("ScheduleNotification001", "Notify Me",
            importance: Importance.high);

    const NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, macOS: null, linux: null);

    flutterLocalNotificationsPlugin.show(
        01, "hello", "hello from flutter", notificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                showNotification();
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: Text("Submit"),
            ),
          )
        ],
      ),
    );
  }
}
