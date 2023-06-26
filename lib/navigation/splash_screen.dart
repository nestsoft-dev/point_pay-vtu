import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 600)).then(
      (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNav()));
      },
    );

    return Scaffold(
      backgroundColor: Constants.myGreen,
      body: Center(
        child: Icon(
          Icons.lock,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
