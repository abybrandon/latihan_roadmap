import 'package:belajar_github/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hint,
      this.obscureText = false,
      this.fuction});
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback? fuction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      height: 51.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextField(
          controller: controller,
          style: GoogleFonts.inter(
            color: Colors.white.withOpacity(0.4),
            fontWeight: FontWeight.w500,
          ),
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
              border: InputBorder.none,
              suffixIcon: fuction != null
                  ? InkWell(
                      onTap: fuction,
                      child: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    )
                  : null)),
    );
  }
}
