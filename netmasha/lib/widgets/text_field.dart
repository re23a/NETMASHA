import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netmasha/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.lableText,
    required this.hintText,
    this.isPassword = false,
    this.isDescription = false,
  });
  final TextEditingController controller;
  final String lableText;
  final String hintText;
  final bool isPassword;
  final bool isDescription;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(lableText),
      subtitle: TextFormField(
        maxLines: isDescription ? 5 : 1,
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: stroke,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
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

// =================================================
class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: stroke,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: purple,
                width: 1.0,
              ),
            ),
            filled: true,
            fillColor: const Color(0xffF9F9F9)),
      ),
    );
  }
}
