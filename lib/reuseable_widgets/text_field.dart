import 'package:flutter/material.dart';


Widget ReuseableTextField(hinttxt,ins ) {
  return Center(
    child: SizedBox(
      height: 50,
      width: 280,
      child: TextFormField(
        
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
        
        decoration: InputDecoration(
          
          isDense: true,
          filled: true,
          fillColor: Color(0xffF0F0F0),
          enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(24)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.0
            ),
          ),
          prefixIcon: Icon(ins,color: Color(0xffA0A0A0),),
          hintText: hinttxt,
          hintStyle: TextStyle(color: Color(0xff909090),),
        ),
      ),
    ),
  );
}