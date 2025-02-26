import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText});

  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffFFB5A2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
