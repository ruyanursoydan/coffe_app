import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.only(bottom: 12),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
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
