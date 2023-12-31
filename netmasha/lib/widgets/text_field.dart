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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lableText,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            child: TextFormField(
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
                      width: .5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: purple,
                      width: .75,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(195, 158, 158, 158)),
                  filled: true,
                  fillColor: const Color(0xffF9F9F9)),
            ),
          ),
        ],
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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
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
                  width: .5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: purple,
                  width: .5,
                ),
              ),
              filled: true,
              fillColor: const Color(0xffF9F9F9)),
        ),
      ),
    );
  }
}
