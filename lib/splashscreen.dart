import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeScreen(),
      title: Text(
        'Face Mask Detection',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      ),
      image: Image.asset('assets/maskSplash.png'),
      backgroundColor: Colors.blueGrey[300],
      photoSize: 80,
      loaderColor: Colors.white70,
    );
  }
}
