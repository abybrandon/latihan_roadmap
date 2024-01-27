import 'package:belajar_github/FauziKeren/view/widget/styling/textstyle.dart';
import 'package:flutter/material.dart';

class inputForm extends StatelessWidget {
  inputForm({required this.hintText, this.muncul = false, this.fungsiGanti});
  final String hintText;
  final bool? muncul;
  final VoidCallback? fungsiGanti;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyleModif.hint_text,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          // enabledBorder:InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: fungsiGanti != null
              ? InkWell(
                  onTap: fungsiGanti,
                  child: Icon(
                    muncul! ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromARGB(255, 255, 246, 195).withOpacity(0.7),
                  ),
                )
              : null),
      obscureText: muncul ?? false,
      style: TextStyle(color: Colors.white),
    );
  }
}
