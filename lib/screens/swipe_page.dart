import 'package:e_commerce_kit/screens/login_screen.dart';
import 'package:e_commerce_kit/screens/no1_screen.dart';
import 'package:e_commerce_kit/screens/no2_screen.dart';
import 'package:e_commerce_kit/screens/no3_screen.dart';
import 'package:flutter/material.dart';

class SwipePage extends StatefulWidget {
  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        No1Screen(),
        No2Screen(),
        No3Screen(),
        LoginScreen(),
      ],
    );
  }
}