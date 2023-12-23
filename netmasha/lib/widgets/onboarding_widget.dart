
import 'package:flutter/material.dart';
//>>>>>>>> text, circule
class TextOnboarding extends StatelessWidget {
  const TextOnboarding({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 266,
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

// ==========================
class CircleIndex extends StatelessWidget {
  const CircleIndex({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF3E0699) : Colors.grey,
        shape: const OvalBorder(),
      ),
    );
  }
}
