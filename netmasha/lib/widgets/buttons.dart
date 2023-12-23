import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.txt,
    required this.onTap,
    required this.isBigButten,
  });
  final String txt;
  final Function() onTap;
  final bool isBigButten;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isBigButten ? 236 : 100,
        height: 41,
        decoration: ShapeDecoration(
          color: const Color(0xFF3E0699),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}