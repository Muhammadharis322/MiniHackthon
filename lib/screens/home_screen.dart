import 'package:e_commerce_kit/screens/cart_screen.dart';
import 'package:e_commerce_kit/screens/children_screen.dart';
import 'package:e_commerce_kit/screens/men_screen.dart';
import 'package:e_commerce_kit/screens/payment_screen.dart';
import 'package:e_commerce_kit/screens/setting_screen.dart';
import 'package:e_commerce_kit/screens/women_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pg=[
  const HomeScreen(),
  const CartScreen(),
  const SettingScreen(),
  const PaymentScreen(),
  
 ];

  int c_tab=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Color(0xffFFFFFF),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xffFFFFFF),
                title: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 19,
                          ),
                          Container(
                            width: 277,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Color(0xffB0BEC5CC),
                                    ),
                                    hintText: "   Search ",
                                    hintStyle: GoogleFonts.leagueSpartan(
                                      height: 1.2,
                                      color: Color(0xffD6D6D6),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    border: InputBorder.none,
                                    suffixIcon: const Image(
                                        image: AssetImage(
                                            "assets/images/shapeX.png"))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          const Positioned(
                              top: 57,
                              left: 317,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/avatar.png"),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: Color(0xffB0BEC5CC),
                          width: 5,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 12)),
                    tabs: [
                      Tab(
                        child: Text(
                          "WOMEN",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff212224),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "MEN",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff212224),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "CHILDREN",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff212224),
                          ),
                        ),
                      ),
                    ]),
              ),
              body: TabBarView(
                children: [
                  WomenScreen(),
                  MenScreen(),
                  ChildrenScreen(),
                ]),

                bottomNavigationBar: BottomAppBar(
           
          color:  Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    c_tab=0;
                  });
                  
                }, 
               
                icon: c_tab==0
                ? Image.asset("assets/images/home.png",height: 30,color: Color(0xffFE2550),):Image.asset("assets/images/home.png",height: 30,color:Colors.grey)

                
                ),
             
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  CartScreen()));
                    c_tab = 1;
                    
                  });
                
                }, 
                
               icon: c_tab==1
               ? Image.asset("assets/images/shoppingbag.png",height: 30,color: Color(0xffFE2550)):Image.asset("assets/images/shoppingbag.png",height: 30,color:Colors.grey,)
                
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    c_tab=2;
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  SettingScreen()));
                  });
                
                }, 
               icon: c_tab==2
              ? Image.asset("assets/images/setting.png",height: 30,color: Color(0xffFE2550),):Image.asset("assets/images/setting.png",height: 30,color:Colors.grey,)

                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                    c_tab=3;
                  });
 
                }, 
                icon: c_tab==3
                ? Image.asset("assets/images/plus.png",height: 30,color: Color(0xffFE2550),):Image.asset("assets/images/plus.png",height: 30,color:Colors.grey,)
                
                ),     
            ]       
          ),
            ),
            ),
    ),
    );
  }
}
