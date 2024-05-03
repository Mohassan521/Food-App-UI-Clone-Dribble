import 'package:api_testing/utils/bottom_navbar.dart';
import 'package:api_testing/utils/smart_device_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  List mySmartDevices = [
    ["Smart Light", "lib/images/light-bulb.png", true],
    ["Smart AC", "lib/images/air-conditioner.png", false],
    ["Smart TV", "lib/images/smart-tv.png", false],
    ["Smart Fan", "lib/images/fan.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // custom app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: MediaQuery.sizeOf(context).height * 0.040,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          height: MediaQuery.sizeOf(context).height * 0.04,
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D"))
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "Welcome, Hassooo",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "3 May, 2024",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_circle_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add Device",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),

            //
            Text(
              "Widgets",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: mySmartDevices.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.35),
                    itemBuilder: (context, index) {
                      return SmartDeviceBox(
                        smartDeviceName: mySmartDevices[index][0],
                        iconPath: mySmartDevices[index][1],
                        powerOn: mySmartDevices[index][2],
                        onChanged: (value) => powerSwitchChanged(value, index),
                      );
                    })),

            //

            const BottomNavBar()
          ],
        ),
      ),
    );
  }
}
