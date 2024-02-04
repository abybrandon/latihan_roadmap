import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleModif{
  static final TextStyle hintexrt = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFF).withOpacity(0.4),
    
  );
  static final TextStyle title = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

   static TextStyle getStyle({FontStyle? fontStyle, TextDecoration? textDecoration, Color? decorcolor, double? decorationThickness, double? size, Color? color, GoogleFonts? googleFonts, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: googleFonts.toString(),
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
      fontStyle: fontStyle,
      decoration: textDecoration,
      decorationColor: decorcolor,
      decorationThickness: decorationThickness
    );
   }
}