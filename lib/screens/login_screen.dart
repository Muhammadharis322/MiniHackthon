import 'package:e_commerce_kit/reuseable_widgets/signin_signup_button.dart';
import 'package:e_commerce_kit/reuseable_widgets/text_field.dart';
import 'package:e_commerce_kit/screens/home_screen.dart';
import 'package:e_commerce_kit/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 207,
                  width: 172,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 435,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(27)),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Positioned(
                            top: 45,
                            left: 38,
                            child: ReuseableTextField(
                                "YOUR EMAIL", Icons.person_outline_rounded)),
                        Positioned(
                            top: 114,
                            left: 38,
                            child: ReuseableTextField(
                                "PASSWORD", Icons.lock_outline_rounded)),
                        Positioned(
                          top: 200,
                          left: 105,
                          child: SignInSignUpButton(
                            context,
                            true,
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                          ),
                        ),
                        Positioned(
                            top: 280,
                            left: 62,
                            child: Row(
                              children: [
                                Image.asset("assets/images/loginline.png"),
                                SizedBox(
                                  width: 7,
                                ),
                                Positioned(
                                    child: text("OR", Color(0xffA4A4A4), 16,
                                        FontWeight.w400, GoogleFonts.roboto)),
                                SizedBox(
                                  width: 7,
                                ),
                                Image.asset("assets/images/loginline.png"),
                              ],
                            )),
                        Positioned(
                            top: 310,
                            left: 77,
                            child: SignInSignUpButton1(context, () {})),
                        Positioned(
                            top: 390,
                            left: 123,
                            child: text("Create account", Color(0xff4A4242), 16,
                                FontWeight.w500, GoogleFonts.roboto)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
