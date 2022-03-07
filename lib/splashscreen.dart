import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'homepage.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.purple,
      seconds: 3,
      navigateAfterSeconds: HomePage(),
      title: Text(
        "Color Clock",
        style: TextStyle(
            color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
      ),
      image: Image.asset("assets/images/Test_Logo.png"),
    );
  }
}
