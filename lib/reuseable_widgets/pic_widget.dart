import 'package:flutter/material.dart';

Widget PicWidget(double H,double W,pics) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.white
      ),
      image: DecorationImage(
          image: AssetImage(
          pics),
          fit: BoxFit.fill,
          )
      
    ),
    height: H,
    width: W,
  );
}