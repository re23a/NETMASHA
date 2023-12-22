import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.lableText,
    required this.hintText,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String lableText;
  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(lableText),
      subtitle: TextFormField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(const Radius.circular(10)),
              borderSide: BorderSide(
                color: stroke,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: purple,
                width: 1.0,
              ),
            ),
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xffF9F9F9)),
      ),
    );
  }
}
