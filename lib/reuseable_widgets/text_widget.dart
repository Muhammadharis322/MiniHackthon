
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Text TextWidget (String txts, double fs,fw,colr) {
  return Text(
    txts,
    style: GoogleFonts.raleway(
      fontSize: fs,
      fontWeight:fw,
      color: colr,
    ),
  );
}

