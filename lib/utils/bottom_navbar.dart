import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: GNav(
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade600,
            backgroundColor: Colors.black,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite,
                text: "Favourite",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.settings,
                text: "Profile",
              )
            ]),
      ),
    );
  }
}
