import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/home.dart';
import '../screens/reward.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [HomePage(), Reward()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(onTap: onTap, currentIndex: currentIndex, items: [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.diamond), label: 'Rewards'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chartLine), label: 'History'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user), label: 'Profile'),
      ]),
    );
  }
}
