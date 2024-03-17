// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TTextFormField extends StatelessWidget {
  final String labelText;
  final Icon icon;
  final TextEditingController? controller;
  final bool isNumber;
  final bool isPassword;
  final Icon? suffixIcon;
  const TTextFormField({
    Key? key,
    required this.labelText,
    required this.icon,
    this.controller,
    this.isNumber = false,
    this.isPassword = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
