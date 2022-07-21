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
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            PostWidget(
              "assets/images/avatar.png", 
              "Sandy Williams", 
              PicWidget(289, 186, "assets/images/girlpic.png"), 
              PicWidget(84, 57, "assets/images/1.png"), 
              PicWidget(84, 57, "assets/images/2.png"),
              PicWidget(84, 57, "assets/images/3.png"),
              PicWidget(84, 57, "assets/images/4.png"),
              ),
              SizedBox(height: 30,),
              PostWidget(
                "assets/images/avater2.png", 
                "Alero Samuel",
                 PicWidget(289, 186, "assets/images/girlpic.png"), 
              PicWidget(84, 57, "assets/images/1.png"), 
              PicWidget(84, 57, "assets/images/2.png"),
              PicWidget(84, 57, "assets/images/3.png"),
              PicWidget(84, 57, "assets/images/4.png"),
              ),
              SizedBox(height: 30,),
              PostWidget(
              "assets/images/avatar.png", 
              "Sandy Williams", 
              PicWidget(289, 186, "assets/images/girlpic.png"), 
              PicWidget(84, 57, "assets/images/1.png"), 
              PicWidget(84, 57, "assets/images/2.png"),
              PicWidget(84, 57, "assets/images/3.png"),
              PicWidget(84, 57, "assets/images/4.png"),
              ),
              SizedBox(height: 30,),
               PostWidget(
                "assets/images/avater2.png", 
                "Alero Samuel",
                 PicWidget(289, 186, "assets/images/girlpic.png"), 
              PicWidget(84, 57, "assets/images/1.png"), 
              PicWidget(84, 57, "assets/images/2.png"),
              PicWidget(84, 57, "assets/images/3.png"),
              PicWidget(84, 57, "assets/images/4.png"),
              ),

          ],
        ),
      )),
    );
  }
}
