import 'package:belajar_github/Bima/Style/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WIdgetUI {
  static  Widget WidgetRegisterTetxt(String hintext, TextEditingController controller){
    return Container(
    padding: const EdgeInsets.only(left: 8, right: 8),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFF).withOpacity(0.06),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFFFFF).withOpacity(0.4),
          ),
          enabledBorder: InputBorder.none),
    ),
  );
  }


  static Widget Username(TextEditingController username){return Container(
    padding: const EdgeInsets.only(left: 8, right: 8),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFF).withOpacity(0.06),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      controller: username,
      decoration: InputDecoration(
          hintText: 'Enter Username/email ',
          hintStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFFFFF).withOpacity(0.4),
          ),
          enabledBorder: InputBorder.none),
    ),
  );
  }

  // ignore: non_constant_identifier_names
  static  Widget Password(Widget eye, bool eye2, String hintext, TextEditingController controller) {
  return  Container(
    padding: const EdgeInsets.only(left: 8, right: 8),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFF).withOpacity(0.06),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      controller: controller,
      obscureText: eye2,
      decoration: InputDecoration(
        suffixIcon:eye,
          hintText: hintext,
          hintStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFFFFF).withOpacity(0.4),
          ),
          enabledBorder: InputBorder.none),
    ),
  );
  }

  static Widget getLoginButton(BuildContext context, String textbtn) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(98, 205, 203, 1),
            Color.fromRGBO(69, 153, 219, 1),
          ],
          begin: Alignment.center,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: Text(
          textbtn,
          style: TextStyleModif.getStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
