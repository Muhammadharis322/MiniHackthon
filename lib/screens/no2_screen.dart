import 'package:e_commerce_kit/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class No2Screen extends StatefulWidget {
  const No2Screen({Key? key}) : super(key: key);

  @override
  State<No2Screen> createState() => _No2ScreenState();
}

class _No2ScreenState extends State<No2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Center(
          child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/no2.png"),
            ),
          ),
        ),
        Positioned(
          top: 437,
          left: 29,
          child: Container(
            child: text("No", Colors.white, 17.55, FontWeight.w800,
                GoogleFonts.raleway),
          ),
        ),
        Positioned(
            left: 65,
            top: 409,
            child: text("2", Colors.white, 51.84, FontWeight.w400,
                GoogleFonts.abrilFatface)),
        Positioned(
            left: 29,
            top: 471,
            child: text("Featured", Color(0xffFE2550), 24, FontWeight.w800,
                GoogleFonts.raleway)),
        Positioned(
            left: 29,
            top: 494,
            child: text("Tailored", Colors.white, 51.84, FontWeight.w800,
                GoogleFonts.abrilFatface)),
        Positioned(
            left: 29,
            top: 568,
            child: Container(
              child: text(
                  "Jimmy Chuka exploring new spring\nsweater collection",
                  Colors.white,
                  20,
                  FontWeight.w400,
                  GoogleFonts.raleway),
            )),
        Positioned(
            top: 50,
            left: 175,
            child: Image.asset("assets/images/logosmall.png")),
        Positioned(
            top: 659,
            left: 29,
            child: Image.asset("assets/images/boxwhite.png")),
        Positioned(
            top: 677,
            left: 130,
            child: text("Shop Now", Colors.white, 24, FontWeight.w800,
                GoogleFonts.raleway)),
        Positioned(
            top: 757,
            left: 160,
            child: Image.asset("assets/images/no2bottom.png")),
      ])),
    ])));
  }
}
