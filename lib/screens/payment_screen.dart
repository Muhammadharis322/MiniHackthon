// import 'dart:js';

import 'package:e_commerce_kit/screens/home_screen.dart';
import 'package:e_commerce_kit/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 169,
          ),
          Center(
            child:
                Container(child: Image.asset("assets/images/paymentright.png")),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Payment Sucessful",
              style: GoogleFonts.abrilFatface(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: 0.5,
                  )),
          SizedBox(
            height: 50,
          ),
          Text(
              "Your order will be ready in 5 days,\nincluding shipping, more details and\noptions for tracking will be sent to\nyour email ",
              textAlign: TextAlign.center,
              
              style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: -0.3,
                  height: 2,
                  )),
          SizedBox(
            height: 50,
          ),
          Text("Thanks!!!",
              style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 1,
                  )),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 52,
            width: 228,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: text("Continue Shopping", Color(0xffFFFFFF), 14,
                    FontWeight.w600, GoogleFonts.raleway),
                    
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black87;
                        }
                        else return Color(0xffFE2550);
                      })
                    ),

                    ),

          )
        ],
      ),
    ));
  }
}
