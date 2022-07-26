import 'package:e_commerce_kit/reuseable_widgets/cart_widget.dart';
import 'package:e_commerce_kit/screens/payment_screen.dart';
import 'package:e_commerce_kit/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffbfbfd),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
           title: Center(
                child: Column(
                  children: [
                    //SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Text("Cart",style: GoogleFonts.abrilFatface(fontSize: 40,fontWeight: FontWeight.w400,color: Colors.black),),
                         SizedBox(
                          width: 176,
                        ),
                        Icon(Icons.search,color: Colors.black,size: 35,),
                        SizedBox(
                          width: 20,
                        ),
                        Positioned(
                              top: 57,
                              left: 317,
                              child:
                        Container(
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/avatar.png"),
                            )),),
                      ],
                    )
                  ],
                ),
              ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 13,),
              cartbox("assets/images/blackshirt.png"),
              SizedBox(height: 13,),
              cartbox("assets/images/pinkshirt.png"),
              SizedBox(height: 13,),
              cartbox("assets/images/blackfrock.png"),
              SizedBox(height: 13,),
              cartbox("assets/images/longshirt.png"),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 21,),
                  Text("Total:",style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.grey),),
                  SizedBox(width: 3,),
                  Text("\$25.99",style: GoogleFonts.raleway(fontSize: 23,fontWeight: FontWeight.w700,color: Color(0xffFE2550)),),
                  SizedBox(width: 38,),
                  Container(
                    height: 52,
                    width: 164,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: ElevatedButton(
                    onPressed: ()
                    {
                       Navigator.pushReplacement(context,
                       MaterialPageRoute(builder: (context) => const PaymentScreen()));
                    },
                    child: text("Pay Now", Color(0xffFFFFFF),16, FontWeight.w500, GoogleFonts.roboto),
    
                     style: ButtonStyle(
                                    
                                    backgroundColor:
                                                        MaterialStateProperty.resolveWith((states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        return Colors.black26;
                                                      }
                                                      return Color(0xffFE2550);
                                                    })),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}