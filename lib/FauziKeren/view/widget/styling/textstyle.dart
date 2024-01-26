import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleModif {
  static final TextStyle hint_text = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFF).withOpacity(0.4),
  );

  static final TextStyle titleText = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle buttonText = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

    static final TextStyle appBarText = TextStyle(
    fontFamily: GoogleFonts.inter().fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle getStyleInter(
      {FontStyle? fontStyle,
      TextDecoration? textDecoration,
      Color? decorcolor,
      double? decorationThickness,
      double? size,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
        fontFamily: GoogleFonts.inter().fontFamily,
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
        decorationColor: decorcolor,
        decorationThickness: decorationThickness);
  }
}
