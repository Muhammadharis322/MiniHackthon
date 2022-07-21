import 'package:flutter/material.dart';

Widget text(String texts,clr,double fs, fw,FNT) {
  return Text(
    texts,
    style:FNT(color: clr, fontSize: fs, fontWeight: fw),
  );
}