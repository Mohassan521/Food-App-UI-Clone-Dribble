import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool) onChanged;
  SmartDeviceBox(
      {super.key,
      required this.iconPath,
      required this.powerOn,
      required this.smartDeviceName,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: powerOn == true && smartDeviceName == "Smart Light"
                ? const Color(0xff6fc1c6)
                : powerOn == true && smartDeviceName == "Smart AC"
                    ? Colors.grey
                    : powerOn == true && smartDeviceName == "Smart TV"
                        ? Colors.grey
                        : powerOn == true && smartDeviceName == "Smart Fan"
                            ? const Color(0xff727cc5)
                            : const Color(0xff6fc1c6),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    iconPath,
                    height: MediaQuery.sizeOf(context).height * 0.065,
                    color: Colors.white,
                  ),
                  Text(
                    powerOn == true ? "On" : "Off",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    smartDeviceName,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    powerOn == true ? "24.11 Mbps" : "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CupertinoSwitch(value: powerOn, onChanged: onChanged)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
