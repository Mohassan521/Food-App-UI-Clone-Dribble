import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GymAppDesign extends StatelessWidget {
  const GymAppDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.15,
        title: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Text(
                "Run",
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
              Text(
                "On",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.network(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D")),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xfff9f9f9),
                  borderRadius: BorderRadius.circular(6.5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Heart Rate",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_rounded,
                              size: 15,
                              color: Color(0xfff68533),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Great Heart Condition"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "76 bpm",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "06:09",
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Current Pace",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("07:10",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.w700)),
                  Text(
                    "Average Pace",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              textColor: Colors.white,
              color: Color(0xfff68533),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.stop),
                  Text("Stop Run"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
