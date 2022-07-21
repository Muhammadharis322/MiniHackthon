
import 'package:flutter/material.dart';

Container SignInSignUpButton( BuildContext context, bool isLogin,Function OnTap) {
  return Container(
    width: 145,
    height: 42,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
    child: ElevatedButton(onPressed: () {
      OnTap();
    },
    child: Text(
      isLogin ? "LOG IN" : "SIGN UP",
      style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
      ),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.pressed)){
          return Colors.black26;
        }
        return const Color(0xffFE2550);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
    ),
  );
  }

  Container SignInSignUpButton1( BuildContext context,Function OnTap) {
  return Container(
    width: 201,
    height: 46,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
    child: ElevatedButton(onPressed: () {
      OnTap();
    },
    child: Text(
      "LOGIN WITH PHONE",
      style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
      ),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.pressed)){
          return Colors.black26;
        }
        return const Color(0xffFE2550);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
    ),
  );
  }
