import 'package:belajar_github/FauziKeren/view/widget/styling/textstyle.dart';
import 'package:flutter/material.dart';

class inputForm extends StatefulWidget {
  final String hintText;
  inputForm({required this.hintText});
  // const inputForm({super.key});


  @override
  State<inputForm> createState() => _inputFormState();
}

class _inputFormState extends State<inputForm> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyleModif.hint_text,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          // enabledBorder:InputBorder.none,
          focusedBorder: InputBorder.none
          ),
      style: TextStyle(color: Colors.white),
      
    );
  }
}
