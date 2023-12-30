
import 'package:flutter/material.dart';

class LogoLeading extends StatelessWidget {
  const LogoLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 11,
        ),
        Image.asset("assets/Group 632602.png"),
      ],
    );
  }
}