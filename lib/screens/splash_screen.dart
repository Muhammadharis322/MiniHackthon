
import 'dart:async';

import 'package:e_commerce_kit/screens/swipe_page.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
     () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SwipePage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xfffe2550),
      body: Center(
        
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 118.05),
          Positioned(
            left: 36,
            right: 36.97,
            top: 347,
            child: Image.asset("assets/images/logo_outline.png"),)
        
        ],
        ),
      ),
    )
    );
  }
}
