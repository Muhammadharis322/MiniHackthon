import 'package:e_commerce_kit/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class No3Screen extends StatefulWidget {
  const No3Screen({Key? key}) : super(key: key);

  @override
  State<No3Screen> createState() => _No3ScreenState();
}

class _No3ScreenState extends State<No3Screen> {
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
              image: AssetImage("assets/images/no3.png"),
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
            child: text("3", Colors.white, 51.84, FontWeight.w400,
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
                  "Christain Lobi showing us his new\nsummer beach wears",
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
                child: text("Shop Now", Colors.white, 24, FontWeight.w800, GoogleFonts.raleway)),
        Positioned(
            top: 757,
            left: 160,
            child: Image.asset("assets/images/no3bottom.png")),
      ])),
    ])));
  }
}
