import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoppers/pages/login/loginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for 2 seconds
    // before navigating to the login page
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Shoppers", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            // SizedBox(height: 10),
            Image.asset(
              'assets/images/splash.png',
              width: 200,
              height: 700,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ],
        ),
      )
    );
  }
}