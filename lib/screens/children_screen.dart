import 'package:e_commerce_kit/reuseable_widgets/pic_widget.dart';
import 'package:e_commerce_kit/reuseable_widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({Key? key}) : super(key: key);

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfc),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Container(
              height: 417,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: PostWidget(
                "assets/images/avatar.png", 
                "Sandy Williams", 
                PicWidget(170, 186, "assets/images/girlpic.png"), 
                PicWidget(84, 57, "assets/images/1.png"), 
                PicWidget(84, 57, "assets/images/2.png"),
                PicWidget(84, 57, "assets/images/3.png"),
                PicWidget(84, 57, "assets/images/4.png"),
                ),
            ),
              SizedBox(height: 18,),
              Container(
                 height: 417,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
                child: PostWidget(
                  "assets/images/avater2.png", 
                  "Alero Samuel",
                   PicWidget(170, 186, "assets/images/girlpic.png"), 
                PicWidget(84, 57, "assets/images/1.png"), 
                PicWidget(84, 57, "assets/images/2.png"),
                PicWidget(84, 57, "assets/images/3.png"),
                PicWidget(84, 57, "assets/images/4.png"),
                ),
              ),
              SizedBox(height: 18,),
              Container(
                 height: 417,
              width: 350
              ,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
                child: PostWidget(
                "assets/images/avatar.png", 
                "Sandy Williams", 
                PicWidget(170, 186, "assets/images/girlpic.png"), 
                PicWidget(84, 57, "assets/images/1.png"), 
                PicWidget(84, 57, "assets/images/2.png"),
                PicWidget(84, 57, "assets/images/3.png"),
                PicWidget(84, 57, "assets/images/4.png"),
                ),
              ),
              SizedBox(height: 18,),
               Container(
                 height: 417,
              width: 350
              ,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
                 child: PostWidget(
                  "assets/images/avater2.png", 
                  "Alero Samuel",
                   PicWidget(170, 186, "assets/images/girlpic.png"), 
              PicWidget(84, 57, "assets/images/1.png"), 
              PicWidget(84, 57, "assets/images/2.png"),
              PicWidget(84, 57, "assets/images/3.png"),
              PicWidget(84, 57, "assets/images/4.png"),
              ),
               ),

          ],
        ),
      )),
    );
  }
}
