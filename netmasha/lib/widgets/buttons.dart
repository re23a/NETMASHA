import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.txt,
    required this.onTap,
    required this.isBigButten,
    this.inHomePage = false,
  });
  final String txt;
  final Function() onTap;
  final bool isBigButten;
  final bool inHomePage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isBigButten ? 236 : 100,
        height: 41,
        decoration: ShapeDecoration(
          color: inHomePage ? green : purple,
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
