import 'package:belajar_github/FauziKeren/view/widget/styling/textstyle.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String hintText;
  // final String labelText;

  PasswordField({required this.hintText});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyleModif.hint_text,
        focusedBorder: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: IconButton(
          iconSize: 20,
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Color.fromARGB(255, 255, 246, 195).withOpacity(0.7),
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}