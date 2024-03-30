import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key, required onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        color: Colors.blueGrey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.blueGrey[700],
        tabBackgroundColor: Colors.blueGrey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
        )
      ]),
    );
  }
}
