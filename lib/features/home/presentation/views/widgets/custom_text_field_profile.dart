import 'package:flutter/material.dart';

class CustomTextFieldProfile extends StatelessWidget {
  final String hint;
  const CustomTextFieldProfile({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        disabledBorder: buildBorder(),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
        fillColor: Colors.white.withOpacity(.5),
        filled: true
      ),
    );
  }
  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(26),
        borderSide: BorderSide(color: Colors.black.withOpacity(.3)));
  }
}