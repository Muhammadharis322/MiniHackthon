import 'package:e_commerce_kit/reuseable_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget PostWidget(pic, String txt, Wid1, Wid2, Wid3,Wid4,Wid5) {
  return Center(
    child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(pic),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              txt,
              style: GoogleFonts.raleway(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff212224),
              ),
            ),
            SizedBox(
              width: 130,
            ),
            Image.asset("assets/images/heart.png"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              height: 105,
              width: 293,
              child: Text(
                "If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.",
                textAlign: TextAlign.center,
                
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff212224),
                  letterSpacing: -0.3,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Wid1,
                Column(
                  children: [
                    Wid2,
                    Wid3,
                  ],
                ),
                Column(
                  children: [
                    Wid4,
                    Wid5,
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 69,
                  decoration: const BoxDecoration(
                    color: Color(0xffFE2550),
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Center(
                    child: TextWidget(
                        "#SUMMER", 11, FontWeight.normal, Color(0xffFFFFFF)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 69,
                  decoration: const BoxDecoration(
                      color: Color(0xffFE2550),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                    child: TextWidget(
                        "#PURPLE", 11, FontWeight.normal, Color(0xffFFFFFF)),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
